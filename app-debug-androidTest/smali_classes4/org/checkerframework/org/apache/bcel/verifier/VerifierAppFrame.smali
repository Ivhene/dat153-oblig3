.class public Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;
.super Ljavax/swing/JFrame;
.source "VerifierAppFrame.java"


# static fields
.field private static final JUSTICE_VERSION:Ljava/lang/String; = "JustIce by Enver Haase"

.field private static final serialVersionUID:J = -0x78732cc475b27f8L


# instance fields
.field private final aboutMenuItem:Ljavax/swing/JMenuItem;

.field private final cardLayout1:Ljava/awt/CardLayout;

.field private final classNamesJList:Ljavax/swing/JList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/swing/JList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private contentPane:Ljavax/swing/JPanel;

.field private current_class:Ljava/lang/String;

.field private final gridLayout1:Ljava/awt/GridLayout;

.field private final gridLayout2:Ljava/awt/GridLayout;

.field private final gridLayout3:Ljava/awt/GridLayout;

.field private final gridLayout4:Ljava/awt/GridLayout;

.field private final jMenu1:Ljavax/swing/JMenu;

.field private final jMenu2:Ljavax/swing/JMenu;

.field private final jMenuBar1:Ljavax/swing/JMenuBar;

.field private final jPanel1:Ljavax/swing/JPanel;

.field private final jPanel2:Ljavax/swing/JPanel;

.field private final jPanel3:Ljavax/swing/JPanel;

.field private final jScrollPane1:Ljavax/swing/JScrollPane;

.field private final jScrollPane2:Ljavax/swing/JScrollPane;

.field private final jScrollPane3:Ljavax/swing/JScrollPane;

.field private final jScrollPane4:Ljavax/swing/JScrollPane;

.field private final jScrollPane5:Ljavax/swing/JScrollPane;

.field private final jScrollPane6:Ljavax/swing/JScrollPane;

.field private final jScrollPane7:Ljavax/swing/JScrollPane;

.field private final jSplitPane1:Ljavax/swing/JSplitPane;

.field private final jSplitPane2:Ljavax/swing/JSplitPane;

.field private final jSplitPane3:Ljavax/swing/JSplitPane;

.field private final jSplitPane4:Ljavax/swing/JSplitPane;

.field private final messagesPanel:Ljavax/swing/JPanel;

.field private final messagesScrollPane:Ljavax/swing/JScrollPane;

.field private final messagesTextPane:Ljavax/swing/JTextPane;

.field private final newFileMenuItem:Ljavax/swing/JMenuItem;

.field private final pass1TextPane:Ljavax/swing/JTextPane;

.field private final pass2TextPane:Ljavax/swing/JTextPane;

.field private final pass3aJList:Ljavax/swing/JList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/swing/JList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pass3aTextPane:Ljavax/swing/JTextPane;

.field private final pass3bJList:Ljavax/swing/JList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/swing/JList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pass3bTextPane:Ljavax/swing/JTextPane;

.field private final whatisMenuItem:Ljavax/swing/JMenuItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljavax/swing/JFrame;-><init>()V

    .line 58
    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0}, Ljavax/swing/JSplitPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane1:Ljavax/swing/JSplitPane;

    .line 59
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel1:Ljavax/swing/JPanel;

    .line 60
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel2:Ljavax/swing/JPanel;

    .line 61
    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0}, Ljavax/swing/JSplitPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane2:Ljavax/swing/JSplitPane;

    .line 62
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    .line 63
    new-instance v0, Ljavax/swing/JList;

    invoke-direct {v0}, Ljavax/swing/JList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    .line 64
    new-instance v0, Ljava/awt/GridLayout;

    invoke-direct {v0}, Ljava/awt/GridLayout;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->gridLayout1:Ljava/awt/GridLayout;

    .line 65
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesPanel:Ljavax/swing/JPanel;

    .line 66
    new-instance v0, Ljava/awt/GridLayout;

    invoke-direct {v0}, Ljava/awt/GridLayout;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->gridLayout2:Ljava/awt/GridLayout;

    .line 67
    new-instance v0, Ljavax/swing/JMenuBar;

    invoke-direct {v0}, Ljavax/swing/JMenuBar;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jMenuBar1:Ljavax/swing/JMenuBar;

    .line 68
    new-instance v0, Ljavax/swing/JMenu;

    invoke-direct {v0}, Ljavax/swing/JMenu;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jMenu1:Ljavax/swing/JMenu;

    .line 69
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane1:Ljavax/swing/JScrollPane;

    .line 70
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesScrollPane:Ljavax/swing/JScrollPane;

    .line 71
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane3:Ljavax/swing/JScrollPane;

    .line 72
    new-instance v0, Ljava/awt/GridLayout;

    invoke-direct {v0}, Ljava/awt/GridLayout;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->gridLayout4:Ljava/awt/GridLayout;

    .line 73
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane4:Ljavax/swing/JScrollPane;

    .line 74
    new-instance v0, Ljava/awt/CardLayout;

    invoke-direct {v0}, Ljava/awt/CardLayout;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->cardLayout1:Ljava/awt/CardLayout;

    .line 76
    new-instance v0, Ljava/awt/GridLayout;

    invoke-direct {v0}, Ljava/awt/GridLayout;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->gridLayout3:Ljava/awt/GridLayout;

    .line 77
    new-instance v0, Ljavax/swing/JTextPane;

    invoke-direct {v0}, Ljavax/swing/JTextPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    .line 78
    new-instance v0, Ljavax/swing/JTextPane;

    invoke-direct {v0}, Ljavax/swing/JTextPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    .line 79
    new-instance v0, Ljavax/swing/JTextPane;

    invoke-direct {v0}, Ljavax/swing/JTextPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesTextPane:Ljavax/swing/JTextPane;

    .line 80
    new-instance v0, Ljavax/swing/JMenuItem;

    invoke-direct {v0}, Ljavax/swing/JMenuItem;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->newFileMenuItem:Ljavax/swing/JMenuItem;

    .line 81
    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0}, Ljavax/swing/JSplitPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane3:Ljavax/swing/JSplitPane;

    .line 82
    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0}, Ljavax/swing/JSplitPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane4:Ljavax/swing/JSplitPane;

    .line 83
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane2:Ljavax/swing/JScrollPane;

    .line 84
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane5:Ljavax/swing/JScrollPane;

    .line 85
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane6:Ljavax/swing/JScrollPane;

    .line 86
    new-instance v0, Ljavax/swing/JScrollPane;

    invoke-direct {v0}, Ljavax/swing/JScrollPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane7:Ljavax/swing/JScrollPane;

    .line 87
    new-instance v0, Ljavax/swing/JList;

    invoke-direct {v0}, Ljavax/swing/JList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    .line 88
    new-instance v0, Ljavax/swing/JList;

    invoke-direct {v0}, Ljavax/swing/JList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    .line 89
    new-instance v0, Ljavax/swing/JTextPane;

    invoke-direct {v0}, Ljavax/swing/JTextPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    .line 90
    new-instance v0, Ljavax/swing/JTextPane;

    invoke-direct {v0}, Ljavax/swing/JTextPane;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    .line 91
    new-instance v0, Ljavax/swing/JMenu;

    invoke-direct {v0}, Ljavax/swing/JMenu;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jMenu2:Ljavax/swing/JMenu;

    .line 92
    new-instance v0, Ljavax/swing/JMenuItem;

    invoke-direct {v0}, Ljavax/swing/JMenuItem;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->whatisMenuItem:Ljavax/swing/JMenuItem;

    .line 93
    new-instance v0, Ljavax/swing/JMenuItem;

    invoke-direct {v0}, Ljavax/swing/JMenuItem;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->aboutMenuItem:Ljavax/swing/JMenuItem;

    .line 98
    const-wide/16 v0, 0x40

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->enableEvents(J)V

    .line 100
    :try_start_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jbInit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private jbInit()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    check-cast v0, Ljavax/swing/JPanel;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->contentPane:Ljavax/swing/JPanel;

    .line 111
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->cardLayout1:Ljava/awt/CardLayout;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 112
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jMenuBar1:Ljavax/swing/JMenuBar;

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 113
    new-instance v0, Ljava/awt/Dimension;

    const/16 v1, 0x2c4

    const/16 v2, 0x1c3

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->setSize(Ljava/awt/Dimension;)V

    .line 114
    const-string v0, "JustIce"

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->setTitle(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel1:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/Dimension;

    const/16 v2, 0x64

    invoke-direct {v1, v2, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 116
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel1:Ljavax/swing/JPanel;

    new-instance v1, Ljava/awt/Dimension;

    invoke-direct {v1, v2, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 117
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel1:Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->gridLayout1:Ljava/awt/GridLayout;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 118
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane2:Ljavax/swing/JSplitPane;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JSplitPane;->setOrientation(I)V

    .line 119
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel2:Ljavax/swing/JPanel;

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->gridLayout2:Ljava/awt/GridLayout;

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 120
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    new-instance v3, Ljava/awt/Dimension;

    const/16 v4, 0xc8

    invoke-direct {v3, v4, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 121
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    new-instance v3, Ljava/awt/Dimension;

    const/16 v5, 0x190

    invoke-direct {v3, v5, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 122
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->gridLayout4:Ljava/awt/GridLayout;

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 123
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesPanel:Ljavax/swing/JPanel;

    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v2, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 124
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesPanel:Ljavax/swing/JPanel;

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->gridLayout3:Ljava/awt/GridLayout;

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 125
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel2:Ljavax/swing/JPanel;

    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v4, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setMinimumSize(Ljava/awt/Dimension;)V

    .line 126
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jMenu1:Ljavax/swing/JMenu;

    const-string v3, "File"

    invoke-virtual {v0, v3}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane1:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    sget-object v3, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {v0, v3}, Ljavax/swing/JViewport;->setBackground(Ljava/awt/Color;)V

    .line 128
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesScrollPane:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    sget-object v3, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {v0, v3}, Ljavax/swing/JViewport;->setBackground(Ljava/awt/Color;)V

    .line 129
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesScrollPane:Ljavax/swing/JScrollPane;

    new-instance v3, Ljava/awt/Dimension;

    const/16 v4, 0xa

    invoke-direct {v3, v4, v4}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v3}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 130
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    new-instance v3, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$1;

    invoke-direct {v3, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$1;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;)V

    invoke-virtual {v0, v3}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 137
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->setSelectionMode(I)V

    .line 138
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane3:Ljavax/swing/JScrollPane;

    sget-object v3, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-static {v3}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;)Ljavax/swing/border/Border;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/swing/JScrollPane;->setBorder(Ljavax/swing/border/Border;)V

    .line 139
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane3:Ljavax/swing/JScrollPane;

    new-instance v3, Ljava/awt/Dimension;

    invoke-direct {v3, v2, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v3}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 140
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->gridLayout4:Ljava/awt/GridLayout;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/awt/GridLayout;->setRows(I)V

    .line 141
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->gridLayout4:Ljava/awt/GridLayout;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/awt/GridLayout;->setColumns(I)V

    .line 142
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->gridLayout4:Ljava/awt/GridLayout;

    invoke-virtual {v0, v3}, Ljava/awt/GridLayout;->setHgap(I)V

    .line 143
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane4:Ljavax/swing/JScrollPane;

    sget-object v4, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-static {v4}, Ljavax/swing/BorderFactory;->createLineBorder(Ljava/awt/Color;)Ljavax/swing/border/Border;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/swing/JScrollPane;->setBorder(Ljavax/swing/border/Border;)V

    .line 144
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane4:Ljavax/swing/JScrollPane;

    new-instance v4, Ljava/awt/Dimension;

    invoke-direct {v4, v2, v2}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v0, v4}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 145
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    invoke-static {}, Ljavax/swing/BorderFactory;->createRaisedBevelBorder()Ljavax/swing/border/Border;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JTextPane;->setBorder(Ljavax/swing/border/Border;)V

    .line 146
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljavax/swing/JTextPane;->setToolTipText(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setEditable(Z)V

    .line 148
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    invoke-static {}, Ljavax/swing/BorderFactory;->createRaisedBevelBorder()Ljavax/swing/border/Border;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JTextPane;->setBorder(Ljavax/swing/border/Border;)V

    .line 149
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setEditable(Z)V

    .line 150
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesTextPane:Ljavax/swing/JTextPane;

    invoke-static {}, Ljavax/swing/BorderFactory;->createRaisedBevelBorder()Ljavax/swing/border/Border;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JTextPane;->setBorder(Ljavax/swing/border/Border;)V

    .line 151
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setEditable(Z)V

    .line 152
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->newFileMenuItem:Ljavax/swing/JMenuItem;

    const-string v2, "New..."

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->newFileMenuItem:Ljavax/swing/JMenuItem;

    const/16 v2, 0x4e

    const/4 v4, 0x2

    invoke-static {v2, v4, v3}, Ljavax/swing/KeyStroke;->getKeyStroke(IIZ)Ljavax/swing/KeyStroke;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->setAccelerator(Ljavax/swing/KeyStroke;)V

    .line 155
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->newFileMenuItem:Ljavax/swing/JMenuItem;

    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$2;

    invoke-direct {v2, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$2;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;)V

    invoke-virtual {v0, v2}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 162
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setEditable(Z)V

    .line 163
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1}, Ljavax/swing/JTextPane;->setEditable(Z)V

    .line 164
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$3;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$3;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 171
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$4;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$4;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JList;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    .line 178
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jMenu2:Ljavax/swing/JMenu;

    const-string v1, "Help"

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->setText(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->whatisMenuItem:Ljavax/swing/JMenuItem;

    const-string v1, "What is..."

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->whatisMenuItem:Ljavax/swing/JMenuItem;

    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$5;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$5;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 187
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->aboutMenuItem:Ljavax/swing/JMenuItem;

    const-string v1, "About"

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->setText(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->aboutMenuItem:Ljavax/swing/JMenuItem;

    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$6;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$6;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 195
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane2:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesPanel:Ljavax/swing/JPanel;

    const-string v2, "bottom"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesPanel:Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesScrollPane:Ljavax/swing/JScrollPane;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesScrollPane:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane2:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    const-string v4, "top"

    invoke-virtual {v0, v1, v4}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane3:Ljavax/swing/JScrollPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane3:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane4:Ljavax/swing/JScrollPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane3:Ljavax/swing/JSplitPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane3:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane2:Ljavax/swing/JScrollPane;

    const-string v5, "left"

    invoke-virtual {v0, v1, v5}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane2:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane3:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane5:Ljavax/swing/JScrollPane;

    const-string v6, "right"

    invoke-virtual {v0, v1, v6}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane5:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel3:Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane4:Ljavax/swing/JSplitPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane4:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane6:Ljavax/swing/JScrollPane;

    invoke-virtual {v0, v1, v5}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane6:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane4:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane7:Ljavax/swing/JScrollPane;

    invoke-virtual {v0, v1, v6}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane7:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane4:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane1:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel2:Ljavax/swing/JPanel;

    invoke-virtual {v0, v1, v4}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel2:Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane1:Ljavax/swing/JScrollPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane1:Ljavax/swing/JSplitPane;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel1:Ljavax/swing/JPanel;

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JSplitPane;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jPanel1:Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane2:Ljavax/swing/JSplitPane;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jScrollPane1:Ljavax/swing/JScrollPane;

    invoke-virtual {v0}, Ljavax/swing/JScrollPane;->getViewport()Ljavax/swing/JViewport;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    invoke-virtual {v0, v1, v3}, Ljavax/swing/JViewport;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jMenuBar1:Ljavax/swing/JMenuBar;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jMenu1:Ljavax/swing/JMenu;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 219
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jMenuBar1:Ljavax/swing/JMenuBar;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jMenu2:Ljavax/swing/JMenu;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    .line 220
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->contentPane:Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane1:Ljavax/swing/JSplitPane;

    const-string v2, "jSplitPane1"

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jMenu1:Ljavax/swing/JMenu;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->newFileMenuItem:Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 222
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jMenu2:Ljavax/swing/JMenu;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->whatisMenuItem:Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 223
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jMenu2:Ljavax/swing/JMenu;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->aboutMenuItem:Ljavax/swing/JMenuItem;

    invoke-virtual {v0, v1}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 224
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane2:Ljavax/swing/JSplitPane;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Ljavax/swing/JSplitPane;->setDividerLocation(I)V

    .line 225
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane3:Ljavax/swing/JSplitPane;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Ljavax/swing/JSplitPane;->setDividerLocation(I)V

    .line 226
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jSplitPane4:Ljavax/swing/JSplitPane;

    invoke-virtual {v0, v1}, Ljavax/swing/JSplitPane;->setDividerLocation(I)V

    .line 227
    return-void
.end method

.method private verify()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 256
    const-string v0, "PLEASE WAIT"

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->setTitle(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->current_class:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v0

    .line 258
    .local v0, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->flush()V

    .line 260
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass1()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v1

    .line 261
    .local v1, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0x20

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    .line 262
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    .line 263
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    sget-object v7, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {v2, v7}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    .line 264
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v2, v5}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    .line 265
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    sget-object v7, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    invoke-virtual {v2, v7}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    .line 266
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v2, v5}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    .line 268
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    sget-object v7, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    invoke-virtual {v2, v7}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    .line 269
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v2, v5}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    .line 271
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    sget-object v5, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    invoke-virtual {v2, v5}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    goto/16 :goto_1

    .line 273
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    sget-object v8, Ljava/awt/Color;->green:Ljava/awt/Color;

    invoke-virtual {v2, v8}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    .line 274
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass1TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass2()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v2

    if-ne v2, v7, :cond_1

    .line 277
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    .line 278
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    sget-object v7, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {v2, v7}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    .line 279
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v2, v5}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    sget-object v7, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    invoke-virtual {v2, v7}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    .line 281
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    .line 282
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v2, v5}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    .line 283
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    sget-object v5, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    invoke-virtual {v2, v5}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    .line 284
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    new-array v5, v6, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    goto :goto_1

    .line 286
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    .line 287
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass2TextPane:Ljavax/swing/JTextPane;

    sget-object v5, Ljava/awt/Color;->green:Ljava/awt/Color;

    invoke-virtual {v2, v5}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    .line 288
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->current_class:Ljava/lang/String;

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v2

    .line 295
    .local v2, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [Ljava/lang/String;

    .line 296
    .local v5, "methodnames":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_2

    .line 297
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v8

    aget-object v8, v8, v7

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x9

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 296
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 300
    .end local v7    # "i":I
    :cond_2
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    invoke-virtual {v7, v5}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    .line 301
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v6, v8}, Ljavax/swing/JList;->setSelectionInterval(II)V

    .line 302
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    invoke-virtual {v7, v5}, Ljavax/swing/JList;->setListData([Ljava/lang/Object;)V

    .line 303
    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v6, v8}, Ljavax/swing/JList;->setSelectionInterval(II)V

    .line 306
    .end local v2    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v5    # "methodnames":[Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getMessages()[Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "msgs":[Ljava/lang/String;
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesTextPane:Ljavax/swing/JTextPane;

    array-length v6, v2

    if-nez v6, :cond_3

    sget-object v6, Ljava/awt/Color;->green:Ljava/awt/Color;

    goto :goto_2

    :cond_3
    sget-object v6, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    :goto_2
    invoke-virtual {v5, v6}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V

    .line 308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v5, "allmsgs":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    array-length v7, v2

    if-ge v6, v7, :cond_4

    .line 310
    aget-object v7, v2, v6

    invoke-virtual {v7, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 311
    aget-object v7, v2, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 313
    .end local v6    # "i":I
    :cond_4
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->messagesTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->current_class:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "JustIce by Enver Haase"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->setTitle(Ljava/lang/String;)V

    .line 315
    return-void
.end method


# virtual methods
.method aboutMenuItem_actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .line 392
    nop

    .line 393
    const-string v0, "JustIce is a Java class file verifier.\nIt was implemented by Enver Haase in 2001, 2002.\n<http://commons.apache.org/bcel/>"

    const-string v1, "JustIce by Enver Haase"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 398
    return-void
.end method

.method declared-synchronized classNamesJList_valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 3
    .param p1, "e"    # Ljavax/swing/event/ListSelectionEvent;

    monitor-enter p0

    .line 241
    :try_start_0
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 242
    monitor-exit p0

    return-void

    .line 244
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    invoke-virtual {v0}, Ljavax/swing/JList;->getSelectedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->current_class:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    :try_start_2
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->verify()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    goto :goto_0

    .line 247
    .end local p0    # "this":Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 251
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->current_class:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JList;->setSelectedValue(Ljava/lang/Object;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    .line 240
    .end local p1    # "e":Ljavax/swing/event/ListSelectionEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getClassNamesJList()Ljavax/swing/JList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/swing/JList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    return-object v0
.end method

.method newFileMenuItem_actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .line 319
    nop

    .line 320
    const-string v0, "Please enter the fully qualified name of a class or interface to verify:"

    invoke-static {v0}, Ljavax/swing/JOptionPane;->showInputDialog(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "classname":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    .line 325
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->classNamesJList:Ljavax/swing/JList;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ljavax/swing/JList;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 326
    return-void

    .line 322
    :cond_1
    :goto_0
    return-void
.end method

.method declared-synchronized pass3aJList_valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 11
    .param p1, "e"    # Ljavax/swing/event/ListSelectionEvent;

    monitor-enter p0

    .line 330
    :try_start_0
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 331
    monitor-exit p0

    return-void

    .line 333
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->current_class:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v0

    .line 334
    .local v0, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v1, "all3amsg":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 336
    .local v2, "all3aok":Z
    const/4 v3, 0x0

    .line 337
    .local v3, "rejected":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    invoke-virtual {v5}, Ljavax/swing/JList;->getModel()Ljavax/swing/ListModel;

    move-result-object v5

    invoke-interface {v5}, Ljavax/swing/ListModel;->getSize()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 338
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aJList:Ljavax/swing/JList;

    invoke-virtual {v5, v4}, Ljavax/swing/JList;->isSelectedIndex(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 339
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass3a(I)Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v5

    .line 340
    .local v5, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 341
    const/4 v2, 0x0

    .line 342
    const/4 v3, 0x1

    .line 344
    :cond_1
    const/4 v6, 0x0

    .line 346
    .local v6, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :try_start_2
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v7

    move-object v6, v7

    .line 347
    const-string v7, "Method \'"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\': "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 348
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    const/16 v10, 0x20

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 352
    goto :goto_1

    .line 349
    .end local p0    # "this":Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;
    :catch_0
    move-exception v7

    .line 351
    .local v7, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 337
    .end local v5    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .end local v6    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v7    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 355
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    .line 356
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aTextPane:Ljavax/swing/JTextPane;

    if-eqz v2, :cond_4

    sget-object v5, Ljava/awt/Color;->green:Ljava/awt/Color;

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    sget-object v5, Ljava/awt/Color;->red:Ljava/awt/Color;

    goto :goto_2

    :cond_5
    sget-object v5, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    :goto_2
    invoke-virtual {v4, v5}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 357
    monitor-exit p0

    return-void

    .line 329
    .end local v0    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v1    # "all3amsg":Ljava/lang/StringBuilder;
    .end local v2    # "all3aok":Z
    .end local v3    # "rejected":Z
    .end local p1    # "e":Ljavax/swing/event/ListSelectionEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pass3bJList_valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 11
    .param p1, "e"    # Ljavax/swing/event/ListSelectionEvent;

    monitor-enter p0

    .line 361
    :try_start_0
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 362
    monitor-exit p0

    return-void

    .line 364
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->current_class:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v0

    .line 365
    .local v0, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v1, "all3bmsg":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 367
    .local v2, "all3bok":Z
    const/4 v3, 0x0

    .line 368
    .local v3, "rejected":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    invoke-virtual {v5}, Ljavax/swing/JList;->getModel()Ljavax/swing/ListModel;

    move-result-object v5

    invoke-interface {v5}, Ljavax/swing/ListModel;->getSize()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 369
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bJList:Ljavax/swing/JList;

    invoke-virtual {v5, v4}, Ljavax/swing/JList;->isSelectedIndex(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 370
    invoke-virtual {v0, v4}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass3b(I)Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v5

    .line 371
    .local v5, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 372
    const/4 v2, 0x0

    .line 373
    const/4 v3, 0x1

    .line 375
    :cond_1
    const/4 v6, 0x0

    .line 377
    .local v6, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :try_start_2
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v7

    move-object v6, v7

    .line 378
    const-string v7, "Method \'"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v8

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\': "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 379
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0xa

    const/16 v10, 0x20

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 383
    goto :goto_1

    .line 380
    .end local p0    # "this":Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;
    :catch_0
    move-exception v7

    .line 382
    .local v7, "ex":Ljava/lang/ClassNotFoundException;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 368
    .end local v5    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .end local v6    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v7    # "ex":Ljava/lang/ClassNotFoundException;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 386
    .end local v4    # "i":I
    :cond_3
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/swing/JTextPane;->setText(Ljava/lang/String;)V

    .line 387
    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3bTextPane:Ljavax/swing/JTextPane;

    if-eqz v2, :cond_4

    sget-object v5, Ljava/awt/Color;->green:Ljava/awt/Color;

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    sget-object v5, Ljava/awt/Color;->red:Ljava/awt/Color;

    goto :goto_2

    :cond_5
    sget-object v5, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    :goto_2
    invoke-virtual {v4, v5}, Ljavax/swing/JTextPane;->setBackground(Ljava/awt/Color;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    .line 360
    .end local v0    # "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .end local v1    # "all3bmsg":Ljava/lang/StringBuilder;
    .end local v2    # "all3bok":Z
    .end local v3    # "rejected":Z
    .end local p1    # "e":Ljavax/swing/event/ListSelectionEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected processWindowEvent(Ljava/awt/event/WindowEvent;)V
    .locals 2
    .param p1, "e"    # Ljava/awt/event/WindowEvent;

    .line 233
    invoke-super {p0, p1}, Ljavax/swing/JFrame;->processWindowEvent(Ljava/awt/event/WindowEvent;)V

    .line 234
    invoke-virtual {p1}, Ljava/awt/event/WindowEvent;->getID()I

    move-result v0

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    .line 235
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 237
    :cond_0
    return-void
.end method

.method whatisMenuItem_actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .line 402
    nop

    .line 403
    const-string v0, "The upper four boxes to the right reflect verification passes according to The Java Virtual Machine Specification.\nThese are (in that order): Pass one, Pass two, Pass three (before data flow analysis), Pass three (data flow analysis).\nThe bottom box to the right shows (warning) messages; warnings do not cause a class to be rejected."

    const-string v1, "JustIce by Enver Haase"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 410
    return-void
.end method
