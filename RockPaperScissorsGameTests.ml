open RockPaperScissorsGame;;
open OUnit;;
 
let test_RockPaperScissors () =
  assert_equal "Second player's Scissors beats first player's Paper" (result_to_string (hand Paper Scissors));
  assert_equal "First player's Paper beats second player's Rock" (result_to_string (hand Paper Rock));
  assert_equal "Two Papers, the game is tied" (result_to_string (hand Paper Paper));
  assert_equal "Second player's Rock beats first player's Scissors" (result_to_string (hand Scissors Rock));
  assert_equal "First player's Scissors beats second player's Paper" (result_to_string (hand Scissors Paper));
  assert_equal "Two Scissorss, the game is tied" (result_to_string (hand Scissors Scissors));
  assert_equal "Second player's Paper beats first player's Rock" (result_to_string (hand Rock Paper));
  assert_equal "First player's Rock beats second player's Scissors" (result_to_string (hand Rock Scissors));
  assert_equal "Two Rocks, the game is tied" (result_to_string (hand Rock Rock));
;;

let suite = 
  "Rock, paper, scissors tests" >::: ["test_RockPaperScissors" >:: test_RockPaperScissors]
;;

let _ =
  run_test_tt_main suite
;;