.class public final Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;
.super Ljava/lang/RuntimeException;
.source "AssertionViolatedException.java"


# static fields
.field private static final serialVersionUID:J = -0x1cd38a9d5b3bdb1L


# instance fields
.field private detailMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTERNAL ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;->detailMessage:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "initCause"    # Ljava/lang/Throwable;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTERNAL ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    invoke-direct {p0, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;->detailMessage:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 81
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v1, "Oops!"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "ave":Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;
    const-string v1, "\nFOUND:\n\t"

    const-string v2, "\nExiting!!\n"

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;->extendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    throw v0
.end method


# virtual methods
.method public extendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pre"    # Ljava/lang/String;
    .param p2, "post"    # Ljava/lang/String;

    .line 57
    if-nez p1, :cond_0

    .line 58
    const-string p1, ""

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;->detailMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;->detailMessage:Ljava/lang/String;

    .line 63
    :cond_1
    if-nez p2, :cond_2

    .line 64
    const-string p2, ""

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;->detailMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;->detailMessage:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;->detailMessage:Ljava/lang/String;

    return-object v0
.end method
