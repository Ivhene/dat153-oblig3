.class Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;
.super Ljava/lang/Object;
.source "VerifyDialog.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IvjEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;

    .line 71
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .line 76
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->access$000(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)Ljavax/swing/JButton;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;

    invoke-static {v0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->access$100(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->access$200(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)Ljavax/swing/JButton;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;

    invoke-static {v0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->access$300(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V

    .line 82
    :cond_1
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->access$400(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)Ljavax/swing/JButton;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 83
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;

    invoke-static {v0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->access$500(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V

    .line 85
    :cond_2
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->access$600(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;)Ljavax/swing/JButton;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 86
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog$IvjEventHandler;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;

    invoke-static {v0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;->access$700(Lorg/checkerframework/org/apache/bcel/verifier/VerifyDialog;Ljava/awt/event/ActionEvent;)V

    .line 88
    :cond_3
    return-void
.end method
