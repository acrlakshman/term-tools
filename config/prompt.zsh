# Set up a prompt with powerline symbols

PR_L=$'\ue0b0'
PR_R=$'\ue0b2'
PR_BRANCH=$'\ue0a0'

PR_COL1_FG="000"  # Insert/normal mode
PR_COL1_BG1="002"
PR_COL1_BG2="004"

PR_COL2_BG="236" # Path
PR_COL2_FG="250"

PR_COL3_BG="003" # Git branch (optional)
PR_COL3_FG="000"

PR_COL4_BG="236" # Time
PR_COL4_FG="250"

PR_COL5_BG="237" # Return value
PR_COL5_FG="250"

PR_VI_INS="$FG[$PR_COL1_FG]$BG[$PR_COL1_BG1] I $FG[$PR_COL1_BG1]$BG[$PR_COL2_BG]$PR_L"
PR_VI_CMD="$FG[$PR_COL1_FG]$BG[$PR_COL1_BG2] N $FG[$PR_COL1_BG2]$BG[$PR_COL2_BG]$PR_L"
PR_VI="%(1V?$PR_VI_CMD?$PR_VI_INS)"

PR_PATH="$FG[$PR_COL2_FG] %~"

PR_GIT0=" %% %k$FG[$PR_COL2_BG]$PR_L"
PR_GIT1=" $FG[$PR_COL2_BG]$BG[$PR_COL3_BG]$PR_L$FG[$PR_COL3_FG] $PR_BRANCH %2v $BG[$PR_COL2_BG]$FG[$PR_COL3_BG]$PR_L $FG[$PR_COL2_FG]%% $FG[$PR_COL2_BG]%k$PR_L"

PROMPT="%f%k$PR_VI$PR_PATH%(2V?$PR_GIT1?$PR_GIT0)%f "

PR_TIME="$FG[$PR_COL4_BG]$PR_R$BG[$PR_COL4_BG]$FG[$PR_COL4_FG] %D{%H:%M:%S} "
PR_STATUS="$FG[$PR_COL5_BG]$PR_R$BG[$PR_COL5_BG]$FG[$PR_COL5_FG] %(?.$FG[028]✔.$FG[009]✘)"
RPROMPT="%f%f$PR_TIME$PR_STATUS %f%k"