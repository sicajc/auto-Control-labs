%MP3.1 G(s) state varialbe representation

disp('state matrices a b c and d for MP3.1');
[a,b,c,d] = tf2ss([2 8 6],[1 8 16 6])



%MP3.2 transfer function repre. using state variable models.

a = [ 1 1 0; -2 0 4; 6 2 10 ] ; b = [ 0 ; 0 ; 1] ; c = [ 0 1 0 ] ; d = [0];

disp('MP 3.2 Transfer function for the given state matrix');
sys = tf(ss( a , b , c , d ))


