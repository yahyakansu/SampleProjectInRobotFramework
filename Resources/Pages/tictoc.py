gameBoard = {'7': ' ', '8': ' ', '9': ' ',
             '4': ' ', '5': ' ', '6': ' ',
             '1': ' ', '2': ' ', '3': ' '}

boardKeys = []

for key in gameBoard:
    boardKeys.append(key)


def game():
    turn = 'X'
    count = 0

    for i in range(10):
        printBoard(gameBoard)
        print("It's your turn," + turn + ". Move to which place?")

        move = input()

        if gameBoard[move] == ' ':
            gameBoard[move] = turn
            count += 1
        else:
            print("You don't move here.\nMove to another space")
            continue

        # to check anyone win
        if count >= 5:
            if gameBoard['1'] == gameBoard['2'] == gameBoard['3'] != ' ':
                printBoard(gameBoard)
                print("\nGame Over.\n")
                print(" **** " + turn + " won. ****")
                break
            elif gameBoard['4'] == gameBoard['5'] == gameBoard['6'] != ' ':
                printBoard(gameBoard)
                print("\nGame Over.\n")
                print(" **** " + turn + " won. ****")
                break
            elif gameBoard['7'] == gameBoard['8'] == gameBoard['9'] != ' ':
                printBoard(gameBoard)
                print("\nGame Over.\n")
                print(" **** " + turn + " won. ****")
                break
            elif gameBoard['1'] == gameBoard['4'] == gameBoard['7'] != ' ':
                printBoard(gameBoard)
                print("\nGame Over.\n")
                print(" **** " + turn + " won. ****")
                break
            elif gameBoard['2'] == gameBoard['5'] == gameBoard['8'] != ' ':
                printBoard(gameBoard)
                print("\nGame Over.\n")
                print(" **** " + turn + " won. ****")
                break
            elif gameBoard['3'] == gameBoard['6'] == gameBoard['9'] != ' ':
                printBoard(gameBoard)
                print("\nGame Over.\n")
                print(" **** " + turn + " won. ****")
                break
            elif gameBoard['7'] == gameBoard['5'] == gameBoard['3'] != ' ':
                printBoard(gameBoard)
                print("\nGame Over.\n")
                print(" **** " + turn + " won. ****")
                break
            elif gameBoard['1'] == gameBoard['5'] == gameBoard['9'] != ' ':
                printBoard(gameBoard)
                print("\nGame Over.\n")
                print(" **** " + turn + " won. ****")
                break

        if count == 9:
            print("\nGame Over.\n")
            print("It's a Tie!!")

        if turn == 'X':
            turn = 'O'
        else:
            turn = 'X'

    restart = input("Do want to play Again?(y/n)")
    if restart == "y" or restart == "Y":
        for key in boardKeys:
            gameBoard[key] = " "

        game()


def printBoard(board):
    print(board['7'] + '|' + board['8'] + '|' + board['9'])
    print('-+-+-')
    print(board['4'] + '|' + board['5'] + '|' + board['6'])
    print('-+-+-')
    print(board['1'] + '|' + board['2'] + '|' + board['3'])


if __name__ == "__main__":
    game()
