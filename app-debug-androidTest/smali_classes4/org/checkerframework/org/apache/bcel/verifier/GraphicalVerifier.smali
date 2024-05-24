.class public Lorg/checkerframework/org/apache/bcel/verifier/GraphicalVerifier;
.super Ljava/lang/Object;
.source "GraphicalVerifier.java"


# instance fields
.field private final packFrame:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/GraphicalVerifier;->packFrame:Z

    .line 38
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;

    invoke-direct {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;-><init>()V

    .line 44
    .local v1, "frame":Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->validate()V

    .line 47
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v2

    .line 48
    .local v2, "screenSize":Ljava/awt/Dimension;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->getSize()Ljava/awt/Dimension;

    move-result-object v3

    .line 49
    .local v3, "frameSize":Ljava/awt/Dimension;
    iget v4, v3, Ljava/awt/Dimension;->height:I

    iget v5, v2, Ljava/awt/Dimension;->height:I

    if-le v4, v5, :cond_0

    .line 50
    iget v4, v2, Ljava/awt/Dimension;->height:I

    iput v4, v3, Ljava/awt/Dimension;->height:I

    .line 52
    :cond_0
    iget v4, v3, Ljava/awt/Dimension;->width:I

    iget v5, v2, Ljava/awt/Dimension;->width:I

    if-le v4, v5, :cond_1

    .line 53
    iget v4, v2, Ljava/awt/Dimension;->width:I

    iput v4, v3, Ljava/awt/Dimension;->width:I

    .line 55
    :cond_1
    iget v4, v2, Ljava/awt/Dimension;->width:I

    iget v5, v3, Ljava/awt/Dimension;->width:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, v2, Ljava/awt/Dimension;->height:I

    iget v6, v3, Ljava/awt/Dimension;->height:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v4, v5}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->setLocation(II)V

    .line 57
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->setVisible(Z)V

    .line 58
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->getClassNamesJList()Ljavax/swing/JList;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;

    invoke-direct {v5}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryListModel;-><init>()V

    invoke-virtual {v4, v5}, Ljavax/swing/JList;->setModel(Ljavax/swing/ListModel;)V

    .line 59
    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->OBJECT:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    .line 60
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->getClassNamesJList()Ljavax/swing/JList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljavax/swing/JList;->setSelectedIndex(I)V

    .line 61
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .line 67
    :try_start_0
    invoke-static {}, Ljavax/swing/UIManager;->getSystemLookAndFeelClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/swing/UIManager;->setLookAndFeel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/GraphicalVerifier;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/verifier/GraphicalVerifier;-><init>()V

    .line 72
    return-void
.end method
