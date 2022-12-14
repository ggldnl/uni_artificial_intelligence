(define  (problem  hotel-problem)

	(:domain hotel-domain)

	(:objects  
		sq-1-1 sq-1-2 sq-1-3
		sq-2-1 sq-2-2 sq-2-3
		sq-3-1 sq-3-2 sq-3-3
		sq-4-1 sq-4-2 sq-4-3 
		robot
	)
	
	(:init 
		(adj sq-1-1 sq-2-1)  (adj sq-2-1 sq-1-1)
		(adj sq-1-2 sq-2-2)  (adj sq-2-2 sq-1-2)
		(adj sq-2-1 sq-2-2)  (adj sq-2-2 sq-2-1)
		(adj sq-1-3 sq-2-3)  (adj sq-2-3 sq-1-3)
		(adj sq-2-1 sq-2-2)  (adj sq-2-2 sq-2-1)
		(adj sq-2-1 sq-3-2)  (adj sq-3-2 sq-2-1)
		(adj sq-2-1 sq-3-1)  (adj sq-3-1 sq-2-1)
		(adj sq-2-2 sq-2-3)  (adj sq-2-3 sq-2-2)
		(adj sq-2-2 sq-3-3)  (adj sq-3-3 sq-2-2)
		(adj sq-2-2 sq-3-2)  (adj sq-3-2 sq-2-2)
		(adj sq-2-2 sq-3-1)  (adj sq-3-1 sq-2-2)
		(adj sq-2-3 sq-3-3)  (adj sq-3-3 sq-2-3)
		(adj sq-2-3 sq-3-2)  (adj sq-3-2 sq-2-3)
		(adj sq-3-1 sq-3-2)  (adj sq-3-2 sq-3-1)
		(adj sq-3-1 sq-4-1)  (adj sq-4-1 sq-3-1)
		(adj sq-3-2 sq-3-3)  (adj sq-3-3 sq-3-2)
		(adj sq-3-2 sq-4-2)  (adj sq-4-2 sq-3-2)
		(adj sq-3-3 sq-4-3)  (adj sq-4-3 sq-3-3)
		(door  sq-1-1 sq-2-1) (door  sq-2-1 sq-1-1)
		(door sq-1-2 sq-2-2)  (door sq-2-2 sq-1-2)
		(door sq-1-3 sq-2-3)  (door sq-2-3 sq-1-3)
		(door sq-3-1 sq-4-1)  (door sq-4-1 sq-3-1)
		(door sq-3-2 sq-4-2)  (door sq-4-2 sq-3-2)
		(door sq-3-3 sq-4-3)  (door sq-4-3 sq-3-3)
		(busy sq-1-1) (busy sq-1-3)
		(busy sq-4-1) (busy sq-4-2)
		(d sq-1-2)  (d sq-4-1)  (d sq-4-3)
		(at robot sq-2-1)
		(ro robot)
	)
	
	(:goal (and 
		(not (d sq-1-2))
		(not (d sq-4-3))
	))
)
