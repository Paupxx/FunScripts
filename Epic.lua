local ScreenGui = Instance.new("ScreenGui")

local Frame = Instance.new("Frame")
Frame.ZIndex = 0
Frame.AnchorPoint = Vector2.new(0, 0.5)
Frame.Size = UDim2.new(0.1225, 0, 0.5287399, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.7
Frame.Position = UDim2.new(0.005, 0, 0.5, 0)
Frame.BorderSizePixel = 0
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = Frame

local Frame1 = Instance.new("Frame")
Frame1.Size = UDim2.new(0.8964661, 0, 0.9600151, 0)
Frame1.BackgroundTransparency = 0.8
Frame1.Position = UDim2.new(0.0487804, 0, 0.0199925, 0)
Frame1.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame1.Parent = Frame

local UICorner1 = Instance.new("UICorner")
UICorner1.CornerRadius = UDim.new(0, 4)
UICorner1.Parent = Frame1

local TextLabel = Instance.new("TextLabel")
TextLabel.Size = UDim2.new(1, 0, 0.0700113, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextStrokeTransparency = 0
TextLabel.TextSize = 14
TextLabel.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel.Text = "Epic"
TextLabel.TextWrapped = true
TextLabel.TextWrap = true
TextLabel.Font = Enum.Font.Code
TextLabel.TextScaled = true
TextLabel.Parent = Frame1

local Frame2 = Instance.new("Frame")
Frame2.Size = UDim2.new(0.8, 0, 0.01, 0)
Frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame2.Position = UDim2.new(0.1, 0, 0.075, 0)
Frame2.BorderSizePixel = 0
Frame2.BackgroundColor3 = Color3.fromRGB(255, 13, 13)
Frame2.Parent = Frame1

local UICorner2 = Instance.new("UICorner")
UICorner2.CornerRadius = UDim.new(0, 32)
UICorner2.Parent = Frame2

local UIGradient = Instance.new("UIGradient")
UIGradient.Parent = Frame2

local ScrollingFrame = Instance.new("ScrollingFrame")
ScrollingFrame.Size = UDim2.new(1, 0, 0.9063078, 0)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.Position = UDim2.new(-0.0055525, 0, 0.0933007, 0)
ScrollingFrame.Active = true
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
ScrollingFrame.ScrollBarThickness = 2
ScrollingFrame.Parent = Frame1

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = ScrollingFrame

local TextLabel1 = Instance.new("TextLabel")
TextLabel1.LayoutOrder = 1
TextLabel1.Size = UDim2.new(1, 0, 0.02, 0)
TextLabel1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.BackgroundTransparency = 1
TextLabel1.BorderSizePixel = 0
TextLabel1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.FontSize = Enum.FontSize.Size14
TextLabel1.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel1.TextStrokeTransparency = 0
TextLabel1.TextSize = 14
TextLabel1.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel1.Text = "- Reach -"
TextLabel1.TextWrapped = true
TextLabel1.TextWrap = true
TextLabel1.Font = Enum.Font.Code
TextLabel1.TextScaled = true
TextLabel1.Parent = ScrollingFrame

local Frame3 = Instance.new("Frame")
Frame3.LayoutOrder = 3
Frame3.Size = UDim2.new(1, 0, 0.04, 0)
Frame3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame3.BackgroundTransparency = 1
Frame3.BorderSizePixel = 0
Frame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame3.Parent = ScrollingFrame

local TextLabel2 = Instance.new("TextLabel")
TextLabel2.Size = UDim2.new(0.3275957, 0, 1.1041267, 0)
TextLabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel2.BackgroundTransparency = 1
TextLabel2.Position = UDim2.new(0.0388673, 0, 0, 0)
TextLabel2.BorderSizePixel = 0
TextLabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel2.FontSize = Enum.FontSize.Size14
TextLabel2.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel2.TextStrokeTransparency = 0
TextLabel2.TextSize = 14
TextLabel2.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel2.Text = "Reach"
TextLabel2.TextWrapped = true
TextLabel2.TextWrap = true
TextLabel2.Font = Enum.Font.Code
TextLabel2.TextScaled = true
TextLabel2.Parent = Frame3

local TextBox = Instance.new("TextBox")
TextBox.Size = UDim2.new(0.5442222, 0, 0.795, 0)
TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox.Position = UDim2.new(0.3997779, 0, 0.0919999, 0)
TextBox.BorderSizePixel = 0
TextBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox.FontSize = Enum.FontSize.Size14
TextBox.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextStrokeTransparency = 0
TextBox.TextWrapped = true
TextBox.TextWrap = true
TextBox.TextSize = 14
TextBox.TextColor3 = Color3.fromRGB(255, 24, 24)
TextBox.Text = "4"
TextBox.Font = Enum.Font.Code
TextBox.TextScaled = true
TextBox.Parent = Frame3

local UICorner3 = Instance.new("UICorner")
UICorner3.CornerRadius = UDim.new(0, 4)
UICorner3.Parent = TextBox

local Frame4 = Instance.new("Frame")
Frame4.LayoutOrder = 9
Frame4.Size = UDim2.new(1, 0, 0.04, 0)
Frame4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame4.BackgroundTransparency = 1
Frame4.BorderSizePixel = 0
Frame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame4.Parent = ScrollingFrame

local TextLabel3 = Instance.new("TextLabel")
TextLabel3.Size = UDim2.new(0.6996111, 0, 1.1041267, 0)
TextLabel3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Position = UDim2.new(0.0388673, 0, 0, 0)
TextLabel3.BorderSizePixel = 0
TextLabel3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel3.FontSize = Enum.FontSize.Size14
TextLabel3.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel3.TextStrokeTransparency = 0
TextLabel3.TextSize = 14
TextLabel3.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel3.Text = "Autoclicker"
TextLabel3.TextWrapped = true
TextLabel3.TextWrap = true
TextLabel3.Font = Enum.Font.Code
TextLabel3.TextScaled = true
TextLabel3.Parent = Frame4

local TextButton = Instance.new("TextButton")
TextButton.Size = UDim2.new(0.1670187, 0, 0.7950231, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.Position = UDim2.new(0.7773456, 0, 0.0921739, 0)
TextButton.BorderSizePixel = 0
TextButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextButton.FontSize = Enum.FontSize.Size14
TextButton.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14
TextButton.TextColor3 = Color3.fromRGB(255, 24, 24)
TextButton.Text = " "
TextButton.Font = Enum.Font.Code
TextButton.Parent = Frame4

local UICorner4 = Instance.new("UICorner")
UICorner4.CornerRadius = UDim.new(0, 4)
UICorner4.Parent = TextButton

local Frame5 = Instance.new("Frame")
Frame5.AnchorPoint = Vector2.new(0.5, 0.5)
Frame5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame5.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame5.BorderSizePixel = 0
Frame5.BackgroundColor3 = Color3.fromRGB(255, 24, 24)
Frame5.Parent = TextButton

local UICorner5 = Instance.new("UICorner")
UICorner5.CornerRadius = UDim.new(0, 4)
UICorner5.Parent = Frame5

local Frame6 = Instance.new("Frame")
Frame6.LayoutOrder = 2
Frame6.Size = UDim2.new(1, 0, 0.04, 0)
Frame6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame6.BackgroundTransparency = 1
Frame6.BorderSizePixel = 0
Frame6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame6.Parent = ScrollingFrame

local TextLabel4 = Instance.new("TextLabel")
TextLabel4.Size = UDim2.new(0.6996111, 0, 1.1041267, 0)
TextLabel4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel4.BackgroundTransparency = 1
TextLabel4.Position = UDim2.new(0.0388673, 0, 0, 0)
TextLabel4.BorderSizePixel = 0
TextLabel4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel4.FontSize = Enum.FontSize.Size14
TextLabel4.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel4.TextStrokeTransparency = 0
TextLabel4.TextSize = 14
TextLabel4.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel4.Text = "Toggled"
TextLabel4.TextWrapped = true
TextLabel4.TextWrap = true
TextLabel4.Font = Enum.Font.Code
TextLabel4.TextScaled = true
TextLabel4.Parent = Frame6

local TextButton1 = Instance.new("TextButton")
TextButton1.Size = UDim2.new(0.1670187, 0, 0.7950231, 0)
TextButton1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton1.Position = UDim2.new(0.7773456, 0, 0.0921739, 0)
TextButton1.BorderSizePixel = 0
TextButton1.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextButton1.FontSize = Enum.FontSize.Size14
TextButton1.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextButton1.TextSize = 14
TextButton1.TextColor3 = Color3.fromRGB(255, 24, 24)
TextButton1.Text = " "
TextButton1.Font = Enum.Font.Code
TextButton1.Parent = Frame6

local UICorner6 = Instance.new("UICorner")
UICorner6.CornerRadius = UDim.new(0, 4)
UICorner6.Parent = TextButton1

local Frame7 = Instance.new("Frame")
Frame7.AnchorPoint = Vector2.new(0.5, 0.5)
Frame7.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame7.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame7.BorderSizePixel = 0
Frame7.BackgroundColor3 = Color3.fromRGB(255, 24, 24)
Frame7.Parent = TextButton1

local UICorner7 = Instance.new("UICorner")
UICorner7.CornerRadius = UDim.new(0, 4)
UICorner7.Parent = Frame7

local TextLabel5 = Instance.new("TextLabel")
TextLabel5.LayoutOrder = 8
TextLabel5.Size = UDim2.new(1, 0, 0.02, 0)
TextLabel5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel5.BackgroundTransparency = 1
TextLabel5.BorderSizePixel = 0
TextLabel5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel5.FontSize = Enum.FontSize.Size14
TextLabel5.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel5.TextStrokeTransparency = 0
TextLabel5.TextSize = 14
TextLabel5.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel5.Text = "- AutoClicker -"
TextLabel5.TextWrapped = true
TextLabel5.TextWrap = true
TextLabel5.Font = Enum.Font.Code
TextLabel5.TextScaled = true
TextLabel5.Parent = ScrollingFrame

local Frame8 = Instance.new("Frame")
Frame8.LayoutOrder = 4
Frame8.Size = UDim2.new(1, 0, 0.04, 0)
Frame8.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame8.BackgroundTransparency = 1
Frame8.BorderSizePixel = 0
Frame8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame8.Parent = ScrollingFrame

local TextLabel6 = Instance.new("TextLabel")
TextLabel6.Size = UDim2.new(0.6996111, 0, 1.1041267, 0)
TextLabel6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel6.BackgroundTransparency = 1
TextLabel6.Position = UDim2.new(0.0388673, 0, 0, 0)
TextLabel6.BorderSizePixel = 0
TextLabel6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel6.FontSize = Enum.FontSize.Size14
TextLabel6.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel6.TextStrokeTransparency = 0
TextLabel6.TextSize = 14
TextLabel6.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel6.Text = "Reach On Lunge"
TextLabel6.TextWrapped = true
TextLabel6.TextWrap = true
TextLabel6.Font = Enum.Font.Code
TextLabel6.TextScaled = true
TextLabel6.Parent = Frame8

local TextButton2 = Instance.new("TextButton")
TextButton2.Size = UDim2.new(0.1670187, 0, 0.7950231, 0)
TextButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton2.Position = UDim2.new(0.7773456, 0, 0.0921739, 0)
TextButton2.BorderSizePixel = 0
TextButton2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextButton2.FontSize = Enum.FontSize.Size14
TextButton2.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextButton2.TextSize = 14
TextButton2.TextColor3 = Color3.fromRGB(255, 24, 24)
TextButton2.Text = " "
TextButton2.Font = Enum.Font.Code
TextButton2.Parent = Frame8

local UICorner8 = Instance.new("UICorner")
UICorner8.CornerRadius = UDim.new(0, 4)
UICorner8.Parent = TextButton2

local Frame9 = Instance.new("Frame")
Frame9.AnchorPoint = Vector2.new(0.5, 0.5)
Frame9.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame9.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame9.BorderSizePixel = 0
Frame9.BackgroundColor3 = Color3.fromRGB(255, 24, 24)
Frame9.Parent = TextButton2

local UICorner9 = Instance.new("UICorner")
UICorner9.CornerRadius = UDim.new(0, 4)
UICorner9.Parent = Frame9

local Frame10 = Instance.new("Frame")
Frame10.LayoutOrder = 6
Frame10.Size = UDim2.new(1, 0, 0.04, 0)
Frame10.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame10.BackgroundTransparency = 1
Frame10.BorderSizePixel = 0
Frame10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame10.Parent = ScrollingFrame

local TextLabel7 = Instance.new("TextLabel")
TextLabel7.Size = UDim2.new(0.6996111, 0, 1.1041267, 0)
TextLabel7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel7.BackgroundTransparency = 1
TextLabel7.Position = UDim2.new(0.0388673, 0, 0, 0)
TextLabel7.BorderSizePixel = 0
TextLabel7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel7.FontSize = Enum.FontSize.Size14
TextLabel7.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel7.TextStrokeTransparency = 0
TextLabel7.TextSize = 14
TextLabel7.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel7.Text = "Invisible Check"
TextLabel7.TextWrapped = true
TextLabel7.TextWrap = true
TextLabel7.Font = Enum.Font.Code
TextLabel7.TextScaled = true
TextLabel7.Parent = Frame10

local TextButton3 = Instance.new("TextButton")
TextButton3.Size = UDim2.new(0.1670187, 0, 0.7950231, 0)
TextButton3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton3.Position = UDim2.new(0.7773456, 0, 0.0921739, 0)
TextButton3.BorderSizePixel = 0
TextButton3.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextButton3.FontSize = Enum.FontSize.Size14
TextButton3.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextButton3.TextSize = 14
TextButton3.TextColor3 = Color3.fromRGB(255, 24, 24)
TextButton3.Text = " "
TextButton3.Font = Enum.Font.Code
TextButton3.Parent = Frame10

local UICorner10 = Instance.new("UICorner")
UICorner10.CornerRadius = UDim.new(0, 4)
UICorner10.Parent = TextButton3

local Frame11 = Instance.new("Frame")
Frame11.AnchorPoint = Vector2.new(0.5, 0.5)
Frame11.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame11.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame11.BorderSizePixel = 0
Frame11.BackgroundColor3 = Color3.fromRGB(255, 24, 24)
Frame11.Parent = TextButton3

local UICorner11 = Instance.new("UICorner")
UICorner11.CornerRadius = UDim.new(0, 4)
UICorner11.Parent = Frame11

local TextLabel8 = Instance.new("TextLabel")
TextLabel8.LayoutOrder = 7
TextLabel8.Size = UDim2.new(1, 0, 0.02, 0)
TextLabel8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel8.BackgroundTransparency = 1
TextLabel8.BorderSizePixel = 0
TextLabel8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel8.FontSize = Enum.FontSize.Size14
TextLabel8.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel8.TextStrokeTransparency = 0
TextLabel8.TextSize = 14
TextLabel8.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel8.Text = " "
TextLabel8.TextWrapped = true
TextLabel8.TextWrap = true
TextLabel8.Font = Enum.Font.Code
TextLabel8.TextScaled = true
TextLabel8.Parent = ScrollingFrame

local Frame12 = Instance.new("Frame")
Frame12.LayoutOrder = 10
Frame12.Size = UDim2.new(1, 0, 0.04, 0)
Frame12.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame12.BackgroundTransparency = 1
Frame12.BorderSizePixel = 0
Frame12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame12.Parent = ScrollingFrame

local TextLabel9 = Instance.new("TextLabel")
TextLabel9.Size = UDim2.new(0.6996111, 0, 1.1041267, 0)
TextLabel9.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel9.BackgroundTransparency = 1
TextLabel9.Position = UDim2.new(0.0388673, 0, 0, 0)
TextLabel9.BorderSizePixel = 0
TextLabel9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel9.FontSize = Enum.FontSize.Size14
TextLabel9.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel9.TextStrokeTransparency = 0
TextLabel9.TextSize = 14
TextLabel9.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel9.Text = "Wait Before Lunge"
TextLabel9.TextWrapped = true
TextLabel9.TextWrap = true
TextLabel9.Font = Enum.Font.Code
TextLabel9.TextScaled = true
TextLabel9.Parent = Frame12

local TextBox1 = Instance.new("TextBox")
TextBox1.Size = UDim2.new(0.2055217, 0, 0.795, 0)
TextBox1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox1.Position = UDim2.new(0.7384784, 0, 0.0919999, 0)
TextBox1.BorderSizePixel = 0
TextBox1.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox1.FontSize = Enum.FontSize.Size14
TextBox1.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextBox1.TextStrokeTransparency = 0
TextBox1.TextWrapped = true
TextBox1.TextWrap = true
TextBox1.TextSize = 14
TextBox1.TextColor3 = Color3.fromRGB(255, 24, 24)
TextBox1.Text = "2"
TextBox1.Font = Enum.Font.Code
TextBox1.TextScaled = true
TextBox1.Parent = Frame12

local UICorner12 = Instance.new("UICorner")
UICorner12.CornerRadius = UDim.new(0, 4)
UICorner12.Parent = TextBox1

local Frame13 = Instance.new("Frame")
Frame13.LayoutOrder = 11
Frame13.Size = UDim2.new(1, 0, 0.04, 0)
Frame13.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame13.BackgroundTransparency = 1
Frame13.BorderSizePixel = 0
Frame13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame13.Parent = ScrollingFrame

local TextLabel10 = Instance.new("TextLabel")
TextLabel10.Size = UDim2.new(0.6996111, 0, 1.1041267, 0)
TextLabel10.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel10.BackgroundTransparency = 1
TextLabel10.Position = UDim2.new(0.0388673, 0, 0, 0)
TextLabel10.BorderSizePixel = 0
TextLabel10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel10.FontSize = Enum.FontSize.Size14
TextLabel10.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel10.TextStrokeTransparency = 0
TextLabel10.TextSize = 14
TextLabel10.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel10.Text = "Safe Click"
TextLabel10.TextWrapped = true
TextLabel10.TextWrap = true
TextLabel10.Font = Enum.Font.Code
TextLabel10.TextScaled = true
TextLabel10.Parent = Frame13

local TextBox2 = Instance.new("TextBox")
TextBox2.Size = UDim2.new(0.2055217, 0, 0.795, 0)
TextBox2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextBox2.Position = UDim2.new(0.7384784, 0, 0.0919999, 0)
TextBox2.BorderSizePixel = 0
TextBox2.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextBox2.FontSize = Enum.FontSize.Size14
TextBox2.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextBox2.TextStrokeTransparency = 0
TextBox2.TextWrapped = true
TextBox2.TextWrap = true
TextBox2.TextSize = 14
TextBox2.TextColor3 = Color3.fromRGB(255, 24, 24)
TextBox2.Text = "0.1"
TextBox2.Font = Enum.Font.Code
TextBox2.TextScaled = true
TextBox2.Parent = Frame13

local UICorner13 = Instance.new("UICorner")
UICorner13.CornerRadius = UDim.new(0, 4)
UICorner13.Parent = TextBox2

local TextLabel11 = Instance.new("TextLabel")
TextLabel11.LayoutOrder = 12
TextLabel11.Size = UDim2.new(1, 0, 0.02, 0)
TextLabel11.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel11.BackgroundTransparency = 1
TextLabel11.BorderSizePixel = 0
TextLabel11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel11.FontSize = Enum.FontSize.Size14
TextLabel11.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel11.TextStrokeTransparency = 0
TextLabel11.TextSize = 14
TextLabel11.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel11.Text = " "
TextLabel11.TextWrapped = true
TextLabel11.TextWrap = true
TextLabel11.Font = Enum.Font.Code
TextLabel11.TextScaled = true
TextLabel11.Parent = ScrollingFrame

local TextLabel12 = Instance.new("TextLabel")
TextLabel12.LayoutOrder = 13
TextLabel12.Size = UDim2.new(1, 0, 0.02, 0)
TextLabel12.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel12.BackgroundTransparency = 1
TextLabel12.BorderSizePixel = 0
TextLabel12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel12.FontSize = Enum.FontSize.Size14
TextLabel12.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel12.TextStrokeTransparency = 0
TextLabel12.TextSize = 14
TextLabel12.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel12.Text = "- DMG Amp -"
TextLabel12.TextWrapped = true
TextLabel12.TextWrap = true
TextLabel12.Font = Enum.Font.Code
TextLabel12.TextScaled = true
TextLabel12.Parent = ScrollingFrame

local Frame14 = Instance.new("Frame")
Frame14.LayoutOrder = 14
Frame14.Size = UDim2.new(1, 0, 0.04, 0)
Frame14.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame14.BackgroundTransparency = 1
Frame14.BorderSizePixel = 0
Frame14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame14.Parent = ScrollingFrame

local TextLabel13 = Instance.new("TextLabel")
TextLabel13.Size = UDim2.new(0.6996111, 0, 1.1041267, 0)
TextLabel13.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel13.BackgroundTransparency = 1
TextLabel13.Position = UDim2.new(0.0388673, 0, 0, 0)
TextLabel13.BorderSizePixel = 0
TextLabel13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel13.FontSize = Enum.FontSize.Size14
TextLabel13.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel13.TextStrokeTransparency = 0
TextLabel13.TextSize = 14
TextLabel13.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel13.Text = "Amp Toggle"
TextLabel13.TextWrapped = true
TextLabel13.TextWrap = true
TextLabel13.Font = Enum.Font.Code
TextLabel13.TextScaled = true
TextLabel13.Parent = Frame14

local TextButton4 = Instance.new("TextButton")
TextButton4.Size = UDim2.new(0.1670187, 0, 0.7950231, 0)
TextButton4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton4.Position = UDim2.new(0.7773456, 0, 0.0921739, 0)
TextButton4.BorderSizePixel = 0
TextButton4.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextButton4.FontSize = Enum.FontSize.Size14
TextButton4.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextButton4.TextSize = 14
TextButton4.TextColor3 = Color3.fromRGB(255, 24, 24)
TextButton4.Text = " "
TextButton4.Font = Enum.Font.Code
TextButton4.Parent = Frame14

local UICorner14 = Instance.new("UICorner")
UICorner14.CornerRadius = UDim.new(0, 4)
UICorner14.Parent = TextButton4

local Frame15 = Instance.new("Frame")
Frame15.AnchorPoint = Vector2.new(0.5, 0.5)
Frame15.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame15.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame15.BorderSizePixel = 0
Frame15.BackgroundColor3 = Color3.fromRGB(255, 24, 24)
Frame15.Parent = TextButton4

local UICorner15 = Instance.new("UICorner")
UICorner15.CornerRadius = UDim.new(0, 4)
UICorner15.Parent = Frame15

local Frame16 = Instance.new("Frame")
Frame16.LayoutOrder = 15
Frame16.Size = UDim2.new(1, 0, 0.04, 0)
Frame16.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame16.BackgroundTransparency = 1
Frame16.BorderSizePixel = 0
Frame16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame16.Parent = ScrollingFrame

local TextLabel14 = Instance.new("TextLabel")
TextLabel14.Size = UDim2.new(0.4164352, 0, 1.1041267, 0)
TextLabel14.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel14.BackgroundTransparency = 1
TextLabel14.Position = UDim2.new(0.0388673, 0, 0, 0)
TextLabel14.BorderSizePixel = 0
TextLabel14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel14.FontSize = Enum.FontSize.Size14
TextLabel14.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel14.TextStrokeTransparency = 0
TextLabel14.TextSize = 14
TextLabel14.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel14.Text = "Method"
TextLabel14.TextWrapped = true
TextLabel14.TextWrap = true
TextLabel14.Font = Enum.Font.Code
TextLabel14.TextScaled = true
TextLabel14.Parent = Frame16

local TextButton5 = Instance.new("TextButton")
TextButton5.Size = UDim2.new(0.4501946, 0, 0.7950231, 0)
TextButton5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton5.Position = UDim2.new(0.4941697, 0, 0.0921747, 0)
TextButton5.BorderSizePixel = 0
TextButton5.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextButton5.FontSize = Enum.FontSize.Size14
TextButton5.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextButton5.TextStrokeTransparency = 0
TextButton5.TextSize = 14
TextButton5.TextColor3 = Color3.fromRGB(255, 24, 24)
TextButton5.Text = "FTI"
TextButton5.TextWrapped = true
TextButton5.TextWrap = true
TextButton5.Font = Enum.Font.Code
TextButton5.TextScaled = true
TextButton5.Parent = Frame16

local UICorner16 = Instance.new("UICorner")
UICorner16.CornerRadius = UDim.new(0, 4)
UICorner16.Parent = TextButton5

local Frame17 = Instance.new("Frame")
Frame17.AnchorPoint = Vector2.new(0.5, 0.5)
Frame17.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame17.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame17.BorderSizePixel = 0
Frame17.BackgroundColor3 = Color3.fromRGB(255, 24, 24)
Frame17.Parent = TextButton5

local UICorner17 = Instance.new("UICorner")
UICorner17.CornerRadius = UDim.new(0, 4)
UICorner17.Parent = Frame17

local Frame18 = Instance.new("Frame")
Frame18.LayoutOrder = 6
Frame18.Size = UDim2.new(1, 0, 0.04, 0)
Frame18.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame18.BackgroundTransparency = 1
Frame18.BorderSizePixel = 0
Frame18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame18.Parent = ScrollingFrame

local TextLabel15 = Instance.new("TextLabel")
TextLabel15.Size = UDim2.new(0.6996111, 0, 1.1041267, 0)
TextLabel15.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel15.BackgroundTransparency = 1
TextLabel15.Position = UDim2.new(0.0388673, 0, 0, 0)
TextLabel15.BorderSizePixel = 0
TextLabel15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel15.FontSize = Enum.FontSize.Size14
TextLabel15.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel15.TextStrokeTransparency = 0
TextLabel15.TextSize = 14
TextLabel15.TextColor3 = Color3.fromRGB(255, 24, 24)
TextLabel15.Text = "Team Check"
TextLabel15.TextWrapped = true
TextLabel15.TextWrap = true
TextLabel15.Font = Enum.Font.Code
TextLabel15.TextScaled = true
TextLabel15.Parent = Frame18

local TextButton6 = Instance.new("TextButton")
TextButton6.Size = UDim2.new(0.1670187, 0, 0.7950231, 0)
TextButton6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton6.Position = UDim2.new(0.7773456, 0, 0.0921739, 0)
TextButton6.BorderSizePixel = 0
TextButton6.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextButton6.FontSize = Enum.FontSize.Size14
TextButton6.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextButton6.TextSize = 14
TextButton6.TextColor3 = Color3.fromRGB(255, 24, 24)
TextButton6.Text = " "
TextButton6.Font = Enum.Font.Code
TextButton6.Parent = Frame18

local UICorner18 = Instance.new("UICorner")
UICorner18.CornerRadius = UDim.new(0, 4)
UICorner18.Parent = TextButton6

local Frame19 = Instance.new("Frame")
Frame19.AnchorPoint = Vector2.new(0.5, 0.5)
Frame19.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame19.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame19.BorderSizePixel = 0
Frame19.BackgroundColor3 = Color3.fromRGB(255, 24, 24)
Frame19.Parent = TextButton6

local UICorner19 = Instance.new("UICorner")
UICorner19.CornerRadius = UDim.new(0, 4)
UICorner19.Parent = Frame19


local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local Player = Players.LocalPlayer

local Library = {}
local Signals = {
	LibrarySigs = {},
	Debounces = {},
}
local Limbs = {
	Enum.Limb.Head,
	Enum.Limb.RightArm,
	Enum.Limb.Torso,
	Enum.Limb.LeftArm,
	Enum.Limb.LeftLeg,
	Enum.Limb.RightLeg,
}
local Settings = {
	["Toggled"] = false,
	["Reach"] = 4,
	["Reach On Lunge"] = false,
	["Invisible Check"] = false,
	["Team Check"] = false,

	["Autoclicker"] = false,
	["Wait Before Lunge"] = 2,
	["Safe Click"] = 0.1,

	["Damage Amp"] = false,
	["Amp Method"] = "FTI",

	["Toggle UI"] = "H",
}
local Cache = {}
local hookHandle = nil

function Library:InnerTween(Text, State)
	if Text:FindFirstChildOfClass("Frame") then
		if State == true then
			Text:FindFirstChildOfClass("Frame"):TweenSize(UDim2.new(1,0,1,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, false)
		else
			Text:FindFirstChildOfClass("Frame"):TweenSize(UDim2.new(0,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 0.25, false)
		end
	end
end

function Library:hasProperty(part, prop)
	local s,e = pcall(function()
		return part[prop]
	end)
	return s
end

function Library:AddToggleSig(TB, CB, Prop)
	local DefVal = (Prop and Prop.Val) or false
	table.insert(Signals.LibrarySigs, TB.MouseButton1Click:Connect(function()
		DefVal = not DefVal
		CB(DefVal)
	end))
end

function Library:teamCheck(Player1, Player2)
	return Player1.Team == Player2.Team
end

function Library:AddTextBoxSig(TB, CB, Prop)
	if Prop and Prop.Val then
		CB(Prop.Val)
	end
	table.insert(Signals.LibrarySigs, TextBox:GetPropertyChangedSignal("Text"):Connect(function()
		CB(TB.Text)
	end))
end

function Library:AddOptionSig(TB, CB, Prop)
	if Prop and Prop.Val then
		CB(Prop.Val)
	end
	if Prop then
		local CurrentOption = Prop.Option
		local OptionAmount = #Prop.Options
		local CurrentIndex = table.find(Prop.Options, CurrentOption)

		table.insert(Signals.LibrarySigs, TB.MouseButton1Click:Connect(function()
			if Prop.Options[CurrentIndex + 1] then
				CB(Prop.Options[CurrentIndex+1])
				TB.Text = Prop.Options[CurrentIndex+1]
				CurrentIndex = CurrentIndex + 1
			else
				CB(Prop.Options[1])
				TB.Text = Prop.Options[1]
				CurrentIndex = 1
			end	
		end))
	end
end


-- FIRETOUCHINTEREST
Library:AddToggleSig(TextButton1, function(Val)
	Library:InnerTween(TextButton1, Val)
	Settings["Toggled"] = Val
	print(Settings["Toggled"])
end)

Library:AddTextBoxSig(TextBox, function(Text)
	Settings["Reach"] = tonumber(Text)
	print(Settings["Reach"])
end)

Library:AddToggleSig(TextButton2, function(Val)
	Library:InnerTween(TextButton2, Val)
	Settings["Reach On Lunge"] = Val
	print(Settings["Reach On Lunge"])
end)

Library:AddToggleSig(TextButton3, function(Val)
	Library:InnerTween(TextButton3, Val)
	Settings["Invisible Check"] = Val
	print(Settings["Invisible Check"])
end)

Library:AddToggleSig(TextButton6, function(Val)
	Library:InnerTween(TextButton6, Val)
	Settings["Team Check"] = Val
	print(Settings["Team Check"])
end)

-- AUTOCLICKER
Library:AddToggleSig(TextButton, function(Val)
	Library:InnerTween(TextButton, Val)
	Settings["Autoclicker"] = Val
	print(Settings["Autoclicker"])
end)

Library:AddTextBoxSig(TextBox1, function(Text)
	Settings["Wait Before Lunge"] = tonumber(Text)
	print(Settings["Wait Before Lunge"])
end)

Library:AddTextBoxSig(TextBox2, function(Text)
	Settings["Safe Click"] = tonumber(Text)
	print(Settings["Safe Click"])
end)

-- DMG AMP
Library:AddToggleSig(TextButton4, function(Val)
	Library:InnerTween(TextButton4, Val)
	Settings["Damage Amp"] = Val
	print(Settings["Damage Amp"])
end)

Library:AddOptionSig(TextButton5, function(Val)
	Settings["Amp Method"] = Val
	print(Settings["Amp Method"])
end, {Option = "FTI", Options = {"FTI", "QUERY"}})

-- RGB COLOR
local chromaColor
task.spawn(function()
	while task.wait() do
		chromaColor = Color3.fromHSV(tick() % 6 / 6, 1, 1)

		for i,v in pairs(ScreenGui:GetDescendants()) do
			if Library:hasProperty(v, "TextColor3") then
				v.TextColor3 = chromaColor
			end
			Frame2.BackgroundColor3 = chromaColor
		end
	end
end)

-- INPUT
UserInputService.InputBegan:Connect(function(Inp, Proc)
	if Proc then
		return
	end
	if Inp.KeyCode == Enum.KeyCode[Settings["Toggle UI"]] then
		ScreenGui.Enabled = not ScreenGui.Enabled
	end
end)

local function FireTouch(Part, Handle)
	local Humanoid = Part.Parent:FindFirstChildOfClass("Humanoid")
	if (Humanoid and Humanoid:GetState() == Enum.HumanoidStateType.Dead) then return end
	local Head, Torso = Part.Parent:FindFirstChild("Head"), Part.Parent:FindFirstChild("Torso")
	if (Head and Torso) and (Settings["Invisible Check"] == true) and (Head.Transparency >= 0.7 or Torso.Transparency >= 0.7) then print("INVIS") return end
	if Torso and Part then
		if Part and table.find(Limbs, Humanoid:GetLimb(Torso)) then

			if Settings["Damage Amp"] then
				if Settings["Amp Method"] == "FTI" then
					for i,BPart in pairs(Humanoid.Parent:GetChildren()) do
						if BPart:IsA("BasePart") then
							if not table.find(Cache, BPart) then
								table.insert(Cache, BPart)
								task.wait()
								firetouchinterest(BPart, Part, 0)
								firetouchinterest(BPart, Handle, 1)
								task.wait()
								table.remove(Cache, table.find(Cache, BPart))
							end
						end
					end
				end
			else
				if not table.find(Cache, Torso) and not table.find(Cache, Part) then
					table.insert(Cache, Torso)
					table.insert(Cache, Part)
					task.wait()
					firetouchinterest(Torso, Handle, 0)
					firetouchinterest(Torso, Handle, 1)
					firetouchinterest(Part, Part, 0)
					firetouchinterest(Part, Handle, 1)
					task.wait()
					table.remove(Cache, table.find(Cache, Torso))
					table.remove(Cache, table.find(Cache, Part))
				end
			end
		end
	end
end

-- MAIN LOOP
table.insert(Signals.LibrarySigs, RunService.RenderStepped:Connect(function()
	if Player.Character then
		local Tool = Player.Character and Player.Character:FindFirstChildOfClass("Tool")
		if Tool and Player.Character:FindFirstChildOfClass("Humanoid") and Player.Character:FindFirstChildOfClass("Humanoid"):GetState() ~= Enum.HumanoidStateType.Dead then
			local Handle = Tool:FindFirstChild("Handle")
			if Handle then
				hookHandle = Handle
				if Settings["Toggled"] then
					if Settings["Reach On Lunge"] then
						if Tool.GripUp.Z == 0 then
							for i,v in pairs(Players:GetPlayers()) do
								if v ~= Player then
									local Root = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
									if Root then
										local MagCheck = (Root.Position - Handle.Position).Magnitude
										if MagCheck <= Settings["Reach"] then
											FireTouch(Root, Handle)
										end
									end
								end
							end
						end
					else
						for i,v in pairs(Players:GetPlayers()) do
							if v ~= Player then
								local Root = v.Character and v.Character:FindFirstChild("HumanoidRootPart")
								if Root then
									local MagCheck = (Root.Position - Handle.Position).Magnitude
									if MagCheck <= Settings["Reach"] then
										FireTouch(Root, Handle)
									end
								end
							end
						end
					end
				end
				if Settings["Damage Amp"] then
					if Settings["Amp Method"] == "QUERY" then
						Handle.CanQuery = not Handle.CanQuery
					end
				end
			end
		end
	end
end))

-- AUTOCLICKER
local Lunging = false
local function safeClick(Tool)
	if not Lunging then
		Lunging = true

		Tool:Activate()
		task.wait(0.1/Settings["Wait Before Lunge"])
		Tool:Activate()

		task.delay(Settings["Safe Click"], function()
			Lunging = false
		end)
	end
end

table.insert(Signals.LibrarySigs, RunService.RenderStepped:Connect(function()
	if Settings["Autoclicker"] then
		if Player and Player.Character and Player.Character.Humanoid then
			if Player.Character.Humanoid.Health > 0 then
				local Tool = Player.Character:FindFirstChildOfClass("Tool")
				if Tool and (Tool:FindFirstChild("Handle") or Tool.Handle) then
					if not Lunging then
						safeClick(Tool)
					end
				end
			end
		end
	end
end))

local Methods = {
	GetTouchingParts = clonefunction(Instance.new("Part").GetTouchingParts),
	ArePartsTouchingOthers = clonefunction(workspace.ArePartsTouchingOthers),
	GetPartBoundsInBox = clonefunction(workspace.GetPartBoundsInBox),
	GetPartBoundsInRadius = clonefunction(workspace.GetPartBoundsInRadius),
	GetPartsInPart = clonefunction(workspace.GetPartsInPart)
}

local GetTouchingHook; GetTouchingHook = hookfunction(Instance.new("Part").GetTouchingParts, function(self, ...)
	if self == hookHandle and typeof(self) == "Instance" and hookHandle ~= nil then
		local Results = Methods.GetTouchingParts(hookHandle)
		if #Cache > 0 then
			for i,v in pairs(Cache) do
				if not table.find(Results, v) then
					table.insert(Results, v)
				end
			end
			return Results
		end
	end
	return GetTouchingHook(self, ...)
end)

local ArePartsTouchingOtherHook; ArePartsTouchingOtherHook = hookfunction(workspace.ArePartsTouchingOthers, function(self, ...)
	if self == workspace and typeof(self) == "Instance" and hookHandle ~= nil then
		local Args = table.pack(...)
		if (Args[1]) then
			local isCachePart, isHandle = false, false

			if #Cache > 0 then
				for i,v in pairs(Cache) do
					if table.find(Args[1], v) then
						isCachePart = true
					end
				end
				if table.find(Args[1], hookHandle) then
					isHandle = true
				end
				if isCachePart and isHandle then
					return true
				end
			end
		end
	end
	return ArePartsTouchingOtherHook(self, ...)
end)

local GetPartBoundsInBoxHook; GetPartBoundsInBoxHook = hookfunction(workspace.GetPartBoundsInBox, function(self, ...)
	if self == workspace and typeof(self) == "Instance" and hookHandle ~= nil then
		local Args = table.pack(...)
		if Args[1] and typeof(Args[1]) == "CFrame" and Args[1] == hookHandle.CFrame then
			if Args[2] and typeof(Args[2]) == "Vector3" and (Args[2].X >= hookHandle.Size.X and Args[2].Y >= hookHandle.Size.Y and Args[2].Z >= hookHandle.Size.Z) then
				if Args[3] and typeof(Args[3]) == "OverlapParams" then
					local MaxParts = Args[3].MaxParts
					local Results = Methods.GetPartBoundsInBox(workspace, Args[1], Args[2], Args[3])
					if MaxParts < #Results and #Cache > 0 then
						for i,v in pairs(Cache) do
							if not table.find(Results, v) and MaxParts < #Results+1 then
								table.insert(Results, v)
							end
						end
						return Results
					end
				end
			end
		end
	end
	return GetPartBoundsInBoxHook(self, ...)
end)

local GetPartBoundsInRadiusHook; GetPartBoundsInRadiusHook = hookfunction(workspace.GetPartBoundsInRadius, function(self, ...)
	if self == workspace and typeof(self) == "Instance" and hookHandle ~= nil then
		local Args = table.pack(...)
		if Args[1] and typeof(Args[1]) == "Vector3" and Args[1] == hookHandle.Position then
			if Args[2] and typeof(Args[2]) == "number" and Args[2] >= hookHandle.Size.Z then
				if Args[3] and typeof(Args[3]) == "OverlapParams" then
					local MaxParts = Args[3].MaxParts
					local Results = Methods.GetPartBoundsInRadius(workspace, Args[1], Args[2], Args[3])
					if MaxParts < #Results and #Cache > 0 then
						for i,v in pairs(Cache) do
							if not table.find(Results, v) and MaxParts < #Results+1 then
								table.insert(Results, v)
							end
						end
						return Results
					end
				end
			end
		end
	end
	return GetPartBoundsInRadiusHook(self, ...)
end)

local NameCall; NameCall = hookmetamethod(game, "__namecall", newcclosure(function(self, ...)
	if not checkcaller() and typeof(self) == "Instance" and hookHandle ~= nil then
		local NC = getnamecallmethod()
		if self == hookHandle and (NC == 'getTouchingParts' or NC == 'GetTouchingParts') then
			local Results = Methods.GetTouchingParts(hookHandle)
			if #Cache > 0 then
				for i,v in pairs(Cache) do
					if not table.find(Results, v) then
						table.insert(Results, v)
					end
				end
				return Results
			end
		elseif self == workspace and (NC == "arePartsTouchingOthers" or NC == "ArePartsTouchingOthers") then
			local Args = table.pack(...)
			if (Args[1]) then
				local isCachePart, isHandle = false, false

				if #Cache > 0 then
					for i,v in pairs(Cache) do
						if table.find(Args[1], v) then
							isCachePart = true
						end
					end
					if table.find(Args[1], hookHandle) then
						isHandle = true
					end
					if isCachePart and isHandle then
						return true
					end
				end
			end
		elseif self == workspace and (NC == 'getPartBoundsInBox' or NC == "GetPartBoundsInBox") then
			local Args = table.pack(...)
            --[[
                GetPartBoundsInBox(cframe: CFrame,size: Vector3,overlapParams: OverlapParams):Objects
            ]]
			if Args[1] and typeof(Args[1]) == "CFrame" and Args[1] == hookHandle.CFrame then
				if Args[2] and typeof(Args[2]) == "Vector3" and (Args[2].X >= hookHandle.Size.X and Args[2].Y >= hookHandle.Size.Y and Args[2].Z >= hookHandle.Size.Z) then
					if not Args[3] then Args[3] = OverlapParams.new() end
					if Args[3] and typeof(Args[3]) == "OverlapParams" then
						local MaxParts = Args[3].MaxParts
						local Results = Methods.GetPartBoundsInBox(workspace, Args[1], Args[2], Args[3])
						if MaxParts < #Results and #Cache > 0 then
							for i,v in pairs(Cache) do
								if not table.find(Results, v) and MaxParts < #Results+1 then
									print("Inserted", v)
									table.insert(Results, v)
								end
							end
							return Results
						end
					end
				end
			end
		elseif self == workspace and (NC == "getPartBoundsInRadius" or NC == "GetPartBoundsInRadius") then
			local Args = table.pack(...)
            --[[
                GetPartBoundsInRadius(position: Vector3,radius: number,overlapParams: OverlapParams):Objects
            ]]
			if Args[1] and typeof(Args[1]) == "Vector3" and Args[1] == hookHandle.Position then
				if Args[2] and typeof(Args[2]) == "number" and Args[2] >= hookHandle.Size.Z then
					if Args[3] and typeof(Args[3]) == "OverlapParams" then
						local MaxParts = Args[3].MaxParts
						local Results = Methods.GetPartBoundsInRadius(workspace, Args[1], Args[2], Args[3])
						if MaxParts < #Results and #Cache > 0 then
							for i,v in pairs(Cache) do
								if not table.find(Results, v) and MaxParts < #Results+1 then
									table.insert(Results, v)
								end
							end
							return Results
						end
					end
				end
			end
		elseif self == workspace and (NC == "getPartsInPart" or NC == "GetPartsInPart") then
			local Args = table.pack(...)
            --[[
                GetPartsInPart(part: BasePart,overlapParams: OverlapParams):Objects
            ]]
			if Args[1] and Args[1] == hookHandle then
				if Args[2] and typeof(Args[2]) == "OverlapParams" then
					local MaxParts = Args[2].MaxParts
					local Results = Methods.GetPartsInPart(workspace, Args[1], Args[2])
					if MaxParts < #Results and #Cache > 0 then
						for i,v in pairs(Cache) do
							if not table.find(Results, v) and MaxParts < #Results+1 then
								table.insert(Results, v)
							end
						end
						return Results
					end
				end
			end
		end 
	end
	return NameCall(self, ...)
end))

ScreenGui.Parent = game:GetService("CoreGui")
