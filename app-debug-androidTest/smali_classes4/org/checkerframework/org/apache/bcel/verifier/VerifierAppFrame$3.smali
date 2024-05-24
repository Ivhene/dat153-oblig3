.class Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$3;
.super Ljava/lang/Object;
.source "VerifierAppFrame.java"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


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

    .line 164
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$3;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 1
    .param p1, "e"    # Ljavax/swing/event/ListSelectionEvent;

    .line 168
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame$3;->this$0:Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierAppFrame;->pass3aJList_valueChanged(Ljavax/swing/event/ListSelectionEvent;)V

    .line 169
    return-void
.end method
