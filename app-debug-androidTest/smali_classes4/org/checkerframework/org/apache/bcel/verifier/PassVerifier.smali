.class public abstract Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;
.super Ljava/lang/Object;
.source "PassVerifier.java"


# instance fields
.field private final messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private verificationResult:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;->messages:Ljava/util/List;

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;->verificationResult:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public abstract do_verify()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 2

    .line 102
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;->verify()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    .line 103
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public verify()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;->verificationResult:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    if-nez v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;->do_verify()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;->verificationResult:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    .line 73
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;->verificationResult:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    return-object v0
.end method
