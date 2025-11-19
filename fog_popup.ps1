# Wait for 5 minutes (300 seconds)
Start-Sleep -Seconds 300

# Define the message
$message = @"
The fog is coming. 4:23 PM, June 26, 2022. Origin point: 26.395348193316° N, -144.778567450876°W. Expansion rate: 5·3x10^8 meter (5c) The fog is coming the fog is coming seek shelter while you still can invest in food invest in water as once the fog is here there will be no more the fog is coming the fog is coming no use for your worthless lives anymore as the fog will consume us all come 2025 the fog is coming and will burn your skin right from your bones no use in shelter no use in water no use in life the fog is coming the fog is coming. The fog is coming, an estimated 4.7 billion people will die, leaving behind 3.2 billion people, the continents of Asia, Africa, and Europe will be eradicated or have little to no survivors. It will continue to the Americas eradicating North America and then continuing to South America. Do anything for survival.
"@

# Display the popup for 180 seconds (3 minutes)
Add-Type -AssemblyName PresentationFramework
[System.Windows.MessageBox]::Show($message, 'WARNING: FOG INBOUND', 'OK', 'Warning')

# To allow it to auto-close, use a custom form instead.
Add-Type -AssemblyName System.Windows.Forms
$form = New-Object System.Windows.Forms.Form
$form.Text = 'WARNING: FOG INBOUND'
$form.TopMost = $true
$form.Width = 600
$form.Height = 350

$label = New-Object System.Windows.Forms.Label
$label.Text = $message
$label.AutoSize = $false
$label.Width = 560
$label.Height = 260
$label.Left = 20
$label.Top = 20
$label.Font = New-Object System.Drawing.Font('Segoe UI', 10)
$form.Controls.Add($label)

# Timer to close the form after 180 seconds
$timer = New-Object System.Windows.Forms.Timer
$timer.Interval = 180000  # 180,000 ms = 3 minutes
$timer.Add_Tick({ $form.Close() })
$timer.Start()

# Show the form as a dialog (popup)
$form.ShowDialog()