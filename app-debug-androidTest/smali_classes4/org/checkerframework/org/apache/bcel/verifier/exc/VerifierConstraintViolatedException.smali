.class public abstract Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;
.super Ljava/lang/RuntimeException;
.source "VerifierConstraintViolatedException.java"


# static fields
.field private static final serialVersionUID:J = 0x28e2c7f721b66f89L


# instance fields
.field private detailMessage:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 43
    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 49
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;->detailMessage:Ljava/lang/String;

    .line 50
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "initCause"    # Ljava/lang/Throwable;

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;->detailMessage:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public extendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pre"    # Ljava/lang/String;
    .param p2, "post"    # Ljava/lang/String;

    .line 66
    if-nez p1, :cond_0

    .line 67
    const-string p1, ""

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;->detailMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;->detailMessage:Ljava/lang/String;

    .line 72
    :cond_1
    if-nez p2, :cond_2

    .line 73
    const-string p2, ""

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;->detailMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;->detailMessage:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/exc/VerifierConstraintViolatedException;->detailMessage:Ljava/lang/String;

    return-object v0
.end method
