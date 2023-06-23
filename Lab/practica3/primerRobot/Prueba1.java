package primerRobot;
import robocode.AdvancedRobot;
import robocode.HitRobotEvent;
import robocode.ScannedRobotEvent;
import java.awt.*;
import robocode.*;
import robocode.util.Utils;
import static robocode.util.Utils.normalRelativeAngleDegrees;
import java.util.Vector;
import java.util.concurrent.ThreadLocalRandom;


// API help : https://robocode.sourceforge.io/docs/robocode/robocode/Robot.html



public class Prueba1 extends AdvancedRobot{ 
	int distancia = 100; // distancia que se mueve despues de un disparo recibido.
	int nadieCerca = 0;
	int direccionRombo = 0;
	int tiempoParado = 0;
	int estrategia = 1;
	int disparosRecibidos = 0;
	int disparosAnterior = 0;
	int orientacion = 1;
	boolean movingForward;
	private static final int ESTRATEGIA_DISPARO = 2;
	private static final int ESTRATEGIA_CIRCULO = 1;
	private static final int ESTRATEGIA_WALL = 3;
	private static final int ESTRATEGIA_CRAZY = 4;
	private static final int DISTANCIA_BORDE = 200; // Distancia mínima al borde para considerarlo cercano
	private static final double DISTANCIA_CERCA = 100; // Distancia mínima para considerar que está cerca de otro robot
	boolean peek; // Don't turn if there's a robot there
	double moveAmount; // How much to move
	/**
	 * run:  Fire's main run function
	 */
	public void run() {
		// Set colors

		setColors();
		//moverHaciaCentro();
		/*
		moveAmount = Math.max(getBattleFieldWidth(), getBattleFieldHeight());
		peek = false;
		turnLeft(getHeading() % 90);
		ahead(moveAmount);
		peek = true;
		turnGunRight(90);
		turnRight(90);
		*/
		
		// Spin the gun around slowly... forever
		while (true) {
			fire(1);
			nadieCerca++;
			verificarEstrategia();
			if (estrategia==ESTRATEGIA_DISPARO) {
				turnGunRight(10);
				buscarRival();			
			}else if (estrategia==ESTRATEGIA_CIRCULO) {
				estrategiaCirculo();
				buscarRival();
			}else if (estrategia==ESTRATEGIA_WALL) {
				estrategiaWall();
			}else if (estrategia==ESTRATEGIA_CRAZY) {
				moverCrazy();
			}

		}
	}

	/**
	 * onScannedRobot:  Fire!
	 */
	public void onScannedRobot(ScannedRobotEvent e) {
		verificarEstrategia();
		if (estrategia!=ESTRATEGIA_WALL)verificarTiempoParado();
		fire(1);
		//fire(1);
		// Por si hay que disparar más veces, antes de que mueva el arma
		scan();
	}

	/**
	 * onHitByBullet:  Turn perpendicular to the bullet, and move a bit.
	 */
	public void onHitByBullet(HitByBulletEvent e) {
		// Lógica cuando se recibe un disparo
		disparosRecibidos++;
		//if (getOthers() > 3) estrategiaCirculo();
		verificarEstrategia();
		if (estrategia==ESTRATEGIA_DISPARO) {
			//turnRight(normalRelativeAngleDegrees(90 - (getHeading() - e.getHeading())));
			int distTemp= ThreadLocalRandom.current().nextInt(25, 91) * orientacion;
			orientacion*=-1;
			turnRight(distTemp);
			ahead(distancia);
			distancia *= -1;	
			scan();
		}
		if (estrategia==ESTRATEGIA_WALL) {
			if (peek) {
				//moverCrazy();
				scan();
			}
		}
		
		
		
	}

	/**
	 * onHitRobot:  Aim at it.  Fire Hard!
	 */
	public void onHitRobot(HitRobotEvent e) {
		//if (getOthers() > 3) estrategiaCirculo();
		// Lógica cuando se golpea a otro robot
		disparosRecibidos++;
		verificarEstrategia();
		/*
		if (e.isMyFault()) {
			reverseDirection();
		}
		*/
		if (estrategia==ESTRATEGIA_DISPARO) {
			double turnGunAmt = normalRelativeAngleDegrees(e.getBearing() + getHeading() - getGunHeading());
			back(50);
			turnGunRight(turnGunAmt);
			fire(1);
		}
		else if (estrategia==ESTRATEGIA_CIRCULO) {
			if (e.getBearing() > -10 && e.getBearing() < 10) {
				fire(1);
			}
			if (e.isMyFault()) {
				turnRight(10);
			}
		}
		else if (estrategia==ESTRATEGIA_WALL) {
			if (e.getBearing() > -90 && e.getBearing() < 90) {
				back(100);
			} // else he's in back of us, so set ahead a bit.
			else {
				ahead(100);
			}
		}
	}
	
	public void onHitWall(HitWallEvent event) {
        // Lógica cuando se choca contra la pared
        //back(200);
        //turnRight(90);
		if (estrategia!=ESTRATEGIA_WALL) {
			verificarEstrategia();
			moverHaciaCentro();
			//reverseDirection();
		}else if (estrategia==ESTRATEGIA_CRAZY) {
			reverseDirection();
		}
		
    }
	
	public void reverseDirection() {
		if (movingForward) {
			setBack(40000);
			movingForward = false;
		} else {
			setAhead(40000);
			movingForward = true;
		}
	}
	
	public void setColors() {
		setBodyColor(Color.black);
		setGunColor(Color.white);
		setRadarColor(Color.black);
		setScanColor(Color.black);
		setBulletColor(Color.yellow);
		
	}
	
	public void buscarRival() {	
		if (nadieCerca==20) {
			turnRight(90);
			if (hayRobotCerca()) back(50); cambiarDireccion(); ahead(50);ahead(100);
			if (cercaDelBorde()) cambiarDireccionBorde();
			
			nadieCerca=0;
		}
	}
	
	
	private boolean cercaDelBorde() {
        double x = getX();
        double y = getY();
        double anchoCampo = getBattleFieldWidth();
        double altoCampo = getBattleFieldHeight();

        // Verificar si está cerca de algún borde
        boolean result = x < DISTANCIA_BORDE || y < DISTANCIA_BORDE || x > anchoCampo - DISTANCIA_BORDE || y > altoCampo - DISTANCIA_BORDE;
        System.out.println(result);
        return result;
	}

    private void cambiarDireccion() {
        // Cambiar la dirección de movimiento al azar entre -90 y 90 grados
        double nuevaDireccion = Math.random() * 180 - 90;
        setTurnRight(nuevaDireccion);
        execute(); // Ejecutar el giro
    }
    
    private void cambiarDireccionBorde() {
    	moverHaciaCentro();
    	//moverCrazy();
    }
    
    private boolean hayRobotCerca() {
        // Obtener la lista de objetos ScannedRobotEvent
        Vector<ScannedRobotEvent> robots = getScannedRobotEvents();

        // Verificar si hay algún robot dentro de la distancia cercana
        for (ScannedRobotEvent robot : robots) {
            if (robot.getDistance() < DISTANCIA_CERCA) {
            	System.out.println("Hay robot cerca a: "+ DISTANCIA_CERCA);
                return true;
            }
        }
        return false;
    }
    
    private void verificarTiempoParado() {
    	tiempoParado++;
    	if (tiempoParado == 40) {
    		cambiarDireccion(); back(50); 
        	cambiarDireccion(); back(50); tiempoParado=0;
    	}
    	
    }
    
    private void moverHaciaCentro() {
        // Obtener la posición actual del robot
        double x = getX();
        double y = getY();

        // Determinar la dirección hacia el centro
        double direccionX = getBattleFieldWidth() / 2 - x;
        double direccionY = getBattleFieldHeight() / 2 - y;

        // Calcular el ángulo hacia el centro
        double angulo = Math.toDegrees(Math.atan2(direccionX, direccionY));

        // Girar hacia el centro
        turnRight(angulo);

        // Mover hacia el centro
        //ahead(Math.sqrt(direccionX * direccionX + direccionY * direccionY));
        //setMaxVelocity(8);
        for (int i = 0; i<2;i++) {
        	ahead(100);
        	turnRight(20);
        	
        }
        //setMaxVelocity(4);
    }
    
    private void estrategiaCirculo() {
		// Tell the game that when we take move,
		// we'll also want to turn right... a lot.
		setTurnRight(1000);
		// Limit our speed to 5
		setMaxVelocity(5);
		// Start moving (and turning)
		ahead(1000);
		// Repeat.
    }
    
    private void estrategiaWall() {
    	peek = true;
		// Move up the wall
		ahead(moveAmount);
		// Don't look now
		peek = false;
		// Turn to the next wall
		turnRight(90);
    }
    
    private void verificarEstrategia() {
    	System.out.println("Disparos recibidos: "+disparosRecibidos);
    	System.out.println("Disparos anterior: "+(disparosAnterior+2));
    	if (disparosRecibidos==(disparosAnterior+7)&&estrategia==1) {
    		estrategia=2;
    		setMaxVelocity(8);
    		disparosAnterior=disparosRecibidos;
    	}else if (disparosRecibidos==(disparosAnterior+4)&&estrategia==3) {
    		estrategia=1;
    		disparosAnterior=disparosRecibidos;
    	}else if (disparosRecibidos==(disparosAnterior+4)&&estrategia==2) {
    		estrategia=1;
    		disparosAnterior=disparosRecibidos;
    	}else if (disparosRecibidos==(disparosAnterior+7)&&estrategia==15) {
    		estrategia=4;
    		disparosAnterior=disparosRecibidos;
    	}
    	System.out.println("La estrategia actual es: "+ estrategia);
    }
    
    private void moverCrazy() {
    	setAhead(10000);
		movingForward = true;
		// Tell the game we will want to turn right 90
		setTurnRight(90);
		// At this point, we have indicated to the game that *when we do something*,
		// we will want to move ahead and turn right.  That's what "set" means.
		// It is important to realize we have not done anything yet!
		// In order to actually move, we'll want to call a method that
		// takes real time, such as waitFor.
		// waitFor actually starts the action -- we start moving and turning.
		// It will not return until we have finished turning.
		waitFor(new TurnCompleteCondition(this));
		// Note:  We are still moving ahead now, but the turn is complete.
		// Now we'll turn the other way...
		setTurnLeft(180);
		// ... and wait for the turn to finish ...
		//waitFor(new TurnCompleteCondition(this));
		// ... then the other way ...
		//setTurnRight(180);
		// .. and wait for that turn to finish.
		//waitFor(new TurnCompleteCondition(this));
		// then back to the top to do it all again
    }
    
    /*
     * 
     * 	con bodyguard

		7 4 12K
		
		
		sin bodyguard
		
		7 2 10K
		7 5 11K
     * 
     * 
     * */
	
}