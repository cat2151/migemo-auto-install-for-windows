@powershell -NoProfile -ExecutionPolicy Unrestricted "$s=[scriptblock]::create((gc \"%~f0\"|?{$_.readcount -gt 1})-join\"`n\");&$s" %*&goto:eof

function startLog($filename) {
    $null = Start-Transcript $filename
    Get-Date
}

function endLog() {
    "かかった時間 : " + ((Get-Date) - $startTime).ToString("m'分's'秒'")
    Stop-Transcript
}

function install_dll_cmigemo_win64() {
    curl.exe -L http://files.kaoriya.net/goto/cmigemo_w64 --output cmigemo-default-win64-20110227.zip
    Expand-Archive -Path cmigemo-default-win64-20110227.zip -DestinationPath . -Force
    copy "cmigemo-default-win64\migemo.dll" "."
}

function install_dict() {
    xcopy /E /I /Y "cmigemo-default-win64\dict\utf-8" "dict"
}

function main() {
    install_dll_cmigemo_win64
    install_dict
    Remove-Item cmigemo-default-win64 -Recurse # zipだけ残して削除
}


###
#$startTime = startLog "install_cmigemo.log"
main
#endLog
del install_cmigemo.bat # 自分自身を削除する。残るのはzipとインストール済みファイルのみとする
