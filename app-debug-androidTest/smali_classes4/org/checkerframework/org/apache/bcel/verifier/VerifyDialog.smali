.class public Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;
.super Ljavax/swing/JDialog;
.source "VerifyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;
    }
.end annotation


# static fields
.field private static classes_to_verify:I = 0x0

.field private static final serialVersionUID:J = -0x5877ddce9d96eea9L


# instance fields
.field private class_name:Ljava/lang/String;

.field private final ivjEventHandler:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

.field private ivjFlushButton:Ljavax/swing/JButton;

.field private ivjJDialogContentPane:Ljavax/swing/JPanel;

.field private ivjPass1Button:Ljavax/swing/JButton;

.field private ivjPass1Panel:Ljavax/swing/JPanel;

.field private ivjPass2Button:Ljavax/swing/JButton;

.field private ivjPass2Panel:Ljavax/swing/JPanel;

.field private ivjPass3Button:Ljavax/swing/JButton;

.field private ivjPass3Panel:Ljavax/swing/JPanel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljavax/swing/JDialog;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 44
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 46
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 48
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 50
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 52
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 54
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 56
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)V

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjEventHandler:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    .line 62
    const-string v1, "java.lang.Object"

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    .line 98
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->initialize()V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/awt/Dialog;)V
    .locals 2
    .param p1, "owner"    # Ljava/awt/Dialog;

    .line 104
    invoke-direct {p0, p1}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Dialog;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 44
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 46
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 48
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 50
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 52
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 54
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 56
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)V

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjEventHandler:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    .line 62
    const-string v1, "java.lang.Object"

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/awt/Dialog;Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Ljava/awt/Dialog;
    .param p2, "title"    # Ljava/lang/String;

    .line 110
    invoke-direct {p0, p1, p2}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Dialog;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 44
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 46
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 48
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 50
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 52
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 54
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 56
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)V

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjEventHandler:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    .line 62
    const-string v1, "java.lang.Object"

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/awt/Dialog;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "owner"    # Ljava/awt/Dialog;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "modal"    # Z

    .line 116
    invoke-direct {p0, p1, p2, p3}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Dialog;Ljava/lang/String;Z)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 44
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 46
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 48
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 50
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 52
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 54
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 56
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)V

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjEventHandler:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    .line 62
    const-string v1, "java.lang.Object"

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/awt/Dialog;Z)V
    .locals 2
    .param p1, "owner"    # Ljava/awt/Dialog;
    .param p2, "modal"    # Z

    .line 122
    invoke-direct {p0, p1, p2}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Dialog;Z)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 44
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 46
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 48
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 50
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 52
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 54
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 56
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)V

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjEventHandler:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    .line 62
    const-string v1, "java.lang.Object"

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/awt/Frame;)V
    .locals 2
    .param p1, "owner"    # Ljava/awt/Frame;

    .line 128
    invoke-direct {p0, p1}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 44
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 46
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 48
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 50
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 52
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 54
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 56
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)V

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjEventHandler:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    .line 62
    const-string v1, "java.lang.Object"

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/awt/Frame;Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Ljava/awt/Frame;
    .param p2, "title"    # Ljava/lang/String;

    .line 134
    invoke-direct {p0, p1, p2}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 44
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 46
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 48
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 50
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 52
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 54
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 56
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)V

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjEventHandler:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    .line 62
    const-string v1, "java.lang.Object"

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/awt/Frame;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "owner"    # Ljava/awt/Frame;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "modal"    # Z

    .line 140
    invoke-direct {p0, p1, p2, p3}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Ljava/lang/String;Z)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 44
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 46
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 48
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 50
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 52
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 54
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 56
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)V

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjEventHandler:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    .line 62
    const-string v1, "java.lang.Object"

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/awt/Frame;Z)V
    .locals 2
    .param p1, "owner"    # Ljava/awt/Frame;
    .param p2, "modal"    # Z

    .line 146
    invoke-direct {p0, p1, p2}, Ljavax/swing/JDialog;-><init>(Ljava/awt/Frame;Z)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 44
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 46
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 48
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 50
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 52
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 54
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 56
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)V

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjEventHandler:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    .line 62
    const-string v1, "java.lang.Object"

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "fully_qualified_class_name"    # Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Ljavax/swing/JDialog;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 44
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 46
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 48
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 50
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 52
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 54
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 56
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    invoke-direct {v1, p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)V

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjEventHandler:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    .line 62
    const-string v1, "java.lang.Object"

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    .line 157
    const-string v0, ".class"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, "dotclasspos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 161
    :cond_0
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 162
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    .line 163
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->initialize()V

    .line 164
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)Ljavax/swing/JButton;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;

    .line 38
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass1Button()Ljavax/swing/JButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;
    .param p1, "x1"    # Ljava/awt/event/ActionEvent;

    .line 38
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->connEtoC1(Ljava/awt/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$200(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)Ljavax/swing/JButton;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;

    .line 38
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass2Button()Ljavax/swing/JButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;
    .param p1, "x1"    # Ljava/awt/event/ActionEvent;

    .line 38
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->connEtoC2(Ljava/awt/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$400(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)Ljavax/swing/JButton;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;

    .line 38
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass3Button()Ljavax/swing/JButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;
    .param p1, "x1"    # Ljava/awt/event/ActionEvent;

    .line 38
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->connEtoC3(Ljava/awt/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$600(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)Ljavax/swing/JButton;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;

    .line 38
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getFlushButton()Ljavax/swing/JButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V
    .locals 0
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;
    .param p1, "x1"    # Ljava/awt/event/ActionEvent;

    .line 38
    invoke-direct {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->connEtoC4(Ljava/awt/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$800()I
    .locals 1

    .line 38
    sget v0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->classes_to_verify:I

    return v0
.end method

.method static synthetic access$810()I
    .locals 2

    .line 38
    sget v0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->classes_to_verify:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->classes_to_verify:I

    return v0
.end method

.method private connEtoC1(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "arg1"    # Ljava/awt/event/ActionEvent;

    .line 172
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->pass1Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    .line 178
    .local v0, "ivjExc":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    .line 180
    .end local v0    # "ivjExc":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private connEtoC2(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "arg1"    # Ljava/awt/event/ActionEvent;

    .line 188
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->pass2Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    .line 194
    .local v0, "ivjExc":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    .line 196
    .end local v0    # "ivjExc":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private connEtoC3(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "arg1"    # Ljava/awt/event/ActionEvent;

    .line 204
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->pass4Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    .line 210
    .local v0, "ivjExc":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    .line 212
    .end local v0    # "ivjExc":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private connEtoC4(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "arg1"    # Ljava/awt/event/ActionEvent;

    .line 220
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->flushButton_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    .line 226
    .local v0, "ivjExc":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    .line 228
    .end local v0    # "ivjExc":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private getFlushButton()Ljavax/swing/JButton;
    .locals 6

    .line 246
    const-string v0, "FlushButton"

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    if-nez v1, :cond_0

    .line 248
    :try_start_0
    new-instance v1, Ljavax/swing/JButton;

    invoke-direct {v1}, Ljavax/swing/JButton;-><init>()V

    iput-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    .line 249
    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setName(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    const-string v2, "Flush: Forget old verification results"

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    sget-object v2, Ljava/awt/SystemColor;->controlHighlight:Ljava/awt/SystemColor;

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    .line 252
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    const/16 v2, 0x12c

    const/16 v3, 0x1e

    const/16 v4, 0x3c

    const/16 v5, 0xd7

    invoke-virtual {v1, v4, v5, v2, v3}, Ljavax/swing/JButton;->setBounds(IIII)V

    .line 253
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    sget-object v2, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {v1, v2}, Ljavax/swing/JButton;->setForeground(Ljava/awt/Color;)V

    .line 254
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    invoke-virtual {v1, v0}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    .line 260
    .local v0, "ivjExc":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    .line 263
    .end local v0    # "ivjExc":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjFlushButton:Ljavax/swing/JButton;

    return-object v0
.end method

.method private getJDialogContentPane()Ljavax/swing/JPanel;
    .locals 3

    .line 269
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    .line 271
    :try_start_0
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    .line 272
    const-string v1, "JDialogContentPane"

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setName(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 274
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JPanel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 275
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass3Panel()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass3Panel()Ljavax/swing/JPanel;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JPanel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 276
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JPanel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 277
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass1Button()Ljavax/swing/JButton;

    move-result-object v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass1Button()Ljavax/swing/JButton;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JButton;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 278
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass2Button()Ljavax/swing/JButton;

    move-result-object v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass2Button()Ljavax/swing/JButton;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JButton;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 279
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass3Button()Ljavax/swing/JButton;

    move-result-object v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass3Button()Ljavax/swing/JButton;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JButton;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 280
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getFlushButton()Ljavax/swing/JButton;

    move-result-object v1

    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getFlushButton()Ljavax/swing/JButton;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JButton;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    .line 286
    .local v0, "ivjExc":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    .line 289
    .end local v0    # "ivjExc":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjJDialogContentPane:Ljavax/swing/JPanel;

    return-object v0
.end method

.method private getPass1Button()Ljavax/swing/JButton;
    .locals 5

    .line 295
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    if-nez v0, :cond_0

    .line 297
    :try_start_0
    new-instance v0, Ljavax/swing/JButton;

    invoke-direct {v0}, Ljavax/swing/JButton;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    .line 298
    const-string v1, "Pass1Button"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setName(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    const-string v1, "Pass1: Verify binary layout of .class file"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    sget-object v1, Ljava/awt/SystemColor;->controlHighlight:Ljava/awt/SystemColor;

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    .line 301
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    const/16 v1, 0x12c

    const/16 v2, 0x1e

    const/16 v3, 0x64

    const/16 v4, 0x28

    invoke-virtual {v0, v3, v4, v1, v2}, Ljavax/swing/JButton;->setBounds(IIII)V

    .line 302
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    const-string v1, "Button1"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    .line 308
    .local v0, "ivjExc":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    .line 311
    .end local v0    # "ivjExc":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Button:Ljavax/swing/JButton;

    return-object v0
.end method

.method private getPass1Panel()Ljavax/swing/JPanel;
    .locals 3

    .line 317
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    .line 319
    :try_start_0
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    .line 320
    const-string v1, "Pass1Panel"

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setName(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 322
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    sget-object v1, Ljava/awt/SystemColor;->controlShadow:Ljava/awt/SystemColor;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 323
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    const/16 v1, 0x32

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v2, v1, v1}, Ljavax/swing/JPanel;->setBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    goto :goto_0

    .line 326
    :catchall_0
    move-exception v0

    .line 329
    .local v0, "ivjExc":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    .line 332
    .end local v0    # "ivjExc":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass1Panel:Ljavax/swing/JPanel;

    return-object v0
.end method

.method private getPass2Button()Ljavax/swing/JButton;
    .locals 4

    .line 338
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    if-nez v0, :cond_0

    .line 340
    :try_start_0
    new-instance v0, Ljavax/swing/JButton;

    invoke-direct {v0}, Ljavax/swing/JButton;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    .line 341
    const-string v1, "Pass2Button"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setName(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    const-string v1, "Pass 2: Verify static .class file constraints"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    sget-object v1, Ljava/awt/SystemColor;->controlHighlight:Ljava/awt/SystemColor;

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    .line 344
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    const/16 v1, 0x12c

    const/16 v2, 0x1e

    const/16 v3, 0x64

    invoke-virtual {v0, v3, v3, v1, v2}, Ljavax/swing/JButton;->setBounds(IIII)V

    .line 345
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    const-string v1, "Button2"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    .line 351
    .local v0, "ivjExc":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    .line 354
    .end local v0    # "ivjExc":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Button:Ljavax/swing/JButton;

    return-object v0
.end method

.method private getPass2Panel()Ljavax/swing/JPanel;
    .locals 4

    .line 360
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    .line 362
    :try_start_0
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    .line 363
    const-string v1, "Pass2Panel"

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setName(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 365
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    sget-object v1, Ljava/awt/SystemColor;->controlShadow:Ljava/awt/SystemColor;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 366
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    const/16 v1, 0x1e

    const/16 v2, 0x5a

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3, v3}, Ljavax/swing/JPanel;->setBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    goto :goto_0

    .line 369
    :catchall_0
    move-exception v0

    .line 372
    .local v0, "ivjExc":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    .line 375
    .end local v0    # "ivjExc":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass2Panel:Ljavax/swing/JPanel;

    return-object v0
.end method

.method private getPass3Button()Ljavax/swing/JButton;
    .locals 5

    .line 381
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    if-nez v0, :cond_0

    .line 383
    :try_start_0
    new-instance v0, Ljavax/swing/JButton;

    invoke-direct {v0}, Ljavax/swing/JButton;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    .line 384
    const-string v1, "Pass3Button"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setName(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    const-string v1, "Passes 3a+3b: Verify code arrays"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    sget-object v1, Ljava/awt/SystemColor;->controlHighlight:Ljava/awt/SystemColor;

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setBackground(Ljava/awt/Color;)V

    .line 387
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    const/16 v1, 0x12c

    const/16 v2, 0x1e

    const/16 v3, 0x64

    const/16 v4, 0xa0

    invoke-virtual {v0, v3, v4, v1, v2}, Ljavax/swing/JButton;->setBounds(IIII)V

    .line 388
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    const-string v1, "Button2"

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->setActionCommand(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    goto :goto_0

    .line 391
    :catchall_0
    move-exception v0

    .line 394
    .local v0, "ivjExc":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    .line 397
    .end local v0    # "ivjExc":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Button:Ljavax/swing/JButton;

    return-object v0
.end method

.method private getPass3Panel()Ljavax/swing/JPanel;
    .locals 4

    .line 403
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    if-nez v0, :cond_0

    .line 405
    :try_start_0
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    .line 406
    const-string v1, "Pass3Panel"

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setName(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 408
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    sget-object v1, Ljava/awt/SystemColor;->controlShadow:Ljava/awt/SystemColor;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 409
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    const/16 v1, 0x1e

    const/16 v2, 0x96

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3, v3}, Ljavax/swing/JPanel;->setBounds(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    .line 415
    .local v0, "ivjExc":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    .line 418
    .end local v0    # "ivjExc":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjPass3Panel:Ljavax/swing/JPanel;

    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 425
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "--------- UNCAUGHT EXCEPTION ---------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 426
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 428
    instance-of v0, p1, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1

    .line 431
    instance-of v0, p1, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_0

    .line 434
    return-void

    .line 432
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/VirtualMachineError;

    throw v0

    .line 429
    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/lang/ThreadDeath;

    throw v0
.end method

.method private initConnections()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 441
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass1Button()Ljavax/swing/JButton;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjEventHandler:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 442
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass2Button()Ljavax/swing/JButton;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjEventHandler:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 443
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass3Button()Ljavax/swing/JButton;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjEventHandler:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 444
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getFlushButton()Ljavax/swing/JButton;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->ivjEventHandler:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;

    invoke-virtual {v0, v1}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 445
    return-void
.end method

.method private initialize()V
    .locals 2

    .line 453
    :try_start_0
    const-string v0, "VerifyDialog"

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->setName(Ljava/lang/String;)V

    .line 454
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->setDefaultCloseOperation(I)V

    .line 455
    const/16 v0, 0x1ae

    const/16 v1, 0x118

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->setSize(II)V

    .line 456
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->setVisible(Z)V

    .line 457
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->setModal(Z)V

    .line 458
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->setResizable(Z)V

    .line 459
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getJDialogContentPane()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->setContentPane(Ljava/awt/Container;)V

    .line 460
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->initConnections()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    goto :goto_0

    .line 461
    :catchall_0
    move-exception v0

    .line 462
    .local v0, "ivjExc":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->handleException(Ljava/lang/Throwable;)V

    .line 465
    .end local v0    # "ivjExc":Ljava/lang/Throwable;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' verification - JustIce / BCEL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->setTitle(Ljava/lang/String;)V

    .line 467
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;

    .line 477
    array-length v0, p0

    sput v0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->classes_to_verify:I

    .line 478
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 481
    .local v2, "arg":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;

    invoke-direct {v3, v2}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;-><init>(Ljava/lang/String;)V

    .line 482
    .local v3, "aVerifyDialog":Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->setModal(Z)V

    .line 483
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$1;

    invoke-direct {v5}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$1;-><init>()V

    invoke-virtual {v3, v5}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 493
    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->setVisible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    .end local v3    # "aVerifyDialog":Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;
    goto :goto_1

    .line 494
    :catchall_0
    move-exception v3

    .line 495
    .local v3, "exception":Ljava/lang/Throwable;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Exception occurred in main() of javax.swing.JDialog"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 496
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 478
    .end local v2    # "arg":Ljava/lang/String;
    .end local v3    # "exception":Ljava/lang/Throwable;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    :cond_0
    return-void
.end method


# virtual methods
.method public flushButton_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2
    .param p1, "actionEvent"    # Ljava/awt/event/ActionEvent;

    .line 233
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->flush()V

    .line 234
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->removeClass(Ljava/lang/String;)V

    .line 235
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object v0

    sget-object v1, Ljava/awt/Color;->gray:Ljava/awt/Color;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 236
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/JPanel;->repaint()V

    .line 237
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v0

    sget-object v1, Ljava/awt/Color;->gray:Ljava/awt/Color;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 238
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/JPanel;->repaint()V

    .line 239
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass3Panel()Ljavax/swing/JPanel;

    move-result-object v0

    sget-object v1, Ljava/awt/Color;->gray:Ljava/awt/Color;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 240
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass3Panel()Ljavax/swing/JPanel;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/JPanel;->repaint()V

    .line 241
    return-void
.end method

.method public pass1Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 4
    .param p1, "actionEvent"    # Ljava/awt/event/ActionEvent;

    .line 504
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v0

    .line 505
    .local v0, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass1()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v1

    .line 506
    .local v1, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 507
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object v2

    sget-object v3, Ljava/awt/Color;->green:Ljava/awt/Color;

    invoke-virtual {v2, v3}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 508
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JPanel;->repaint()V

    .line 510
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 511
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object v2

    sget-object v3, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {v2, v3}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 512
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass1Panel()Ljavax/swing/JPanel;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JPanel;->repaint()V

    .line 514
    :cond_1
    return-void
.end method

.method public pass2Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 4
    .param p1, "actionEvent"    # Ljava/awt/event/ActionEvent;

    .line 519
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->pass1Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V

    .line 520
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v0

    .line 521
    .local v0, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass2()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v1

    .line 522
    .local v1, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 523
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v2

    sget-object v3, Ljava/awt/Color;->green:Ljava/awt/Color;

    invoke-virtual {v2, v3}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 524
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JPanel;->repaint()V

    .line 526
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v2

    if-nez v2, :cond_1

    .line 527
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v2

    sget-object v3, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    invoke-virtual {v2, v3}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 528
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JPanel;->repaint()V

    .line 530
    :cond_1
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 531
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v2

    sget-object v3, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {v2, v3}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 532
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass2Panel()Ljavax/swing/JPanel;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JPanel;->repaint()V

    .line 534
    :cond_2
    return-void
.end method

.method public pass4Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 8
    .param p1, "actionEvent"    # Ljava/awt/event/ActionEvent;

    .line 539
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->pass2Button_ActionPerformed(Ljava/awt/event/ActionEvent;)V

    .line 540
    sget-object v0, Ljava/awt/Color;->green:Ljava/awt/Color;

    .line 541
    .local v0, "color":Ljava/awt/Color;
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v1

    .line 542
    .local v1, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass2()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v2

    .line 543
    .local v2, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 544
    const/4 v3, 0x0

    .line 546
    .local v3, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :try_start_0
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->class_name:Ljava/lang/String;

    invoke-static {v5}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v5

    move-object v3, v5

    .line 547
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v5

    array-length v5, v5

    .line 548
    .local v5, "nr":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 549
    invoke-virtual {v1, v6}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass3b(I)Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v7

    move-object v2, v7

    .line 550
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->getStatus()I

    move-result v7

    if-eq v7, v4, :cond_0

    .line 551
    sget-object v4, Ljava/awt/Color;->red:Ljava/awt/Color;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    .line 552
    goto :goto_1

    .line 548
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 558
    .end local v5    # "nr":I
    .end local v6    # "i":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 555
    :catch_0
    move-exception v4

    .line 557
    .local v4, "ex":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 559
    .end local v3    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v4    # "ex":Ljava/lang/ClassNotFoundException;
    :goto_2
    goto :goto_3

    .line 560
    :cond_2
    sget-object v0, Ljava/awt/Color;->yellow:Ljava/awt/Color;

    .line 562
    :goto_3
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass3Panel()Ljavax/swing/JPanel;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 563
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->getPass3Panel()Ljavax/swing/JPanel;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/swing/JPanel;->repaint()V

    .line 564
    return-void
.end method
