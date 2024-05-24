.class Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$5;
.super Ljava/lang/Object;
.source "VerifierAppFrame.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->jbInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;

    .line 180
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$5;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .line 184
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$5;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->whatisMenuItem_actionPerformed(Ljava/awt/event/ActionEvent;)V

    .line 185
    return-void
.end method
