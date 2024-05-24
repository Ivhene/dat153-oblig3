.class public Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
.super Ljava/lang/Object;
.source "VerificationResult.java"


# static fields
.field public static final VERIFIED_NOTYET:I = 0x0

.field private static final VERIFIED_NOTYET_MSG:Ljava/lang/String; = "Not yet verified."

.field public static final VERIFIED_OK:I = 0x1

.field private static final VERIFIED_OK_MSG:Ljava/lang/String; = "Passed verification."

.field public static final VERIFIED_REJECTED:I = 0x2

.field public static final VR_NOTYET:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

.field public static final VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;


# instance fields
.field private final detailMessage:Ljava/lang/String;

.field private final numeric:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    const/4 v1, 0x0

    const-string v2, "Not yet verified."

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_NOTYET:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    .line 59
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    const/4 v1, 0x1

    const-string v2, "Passed verification."

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->numeric:I

    .line 71
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->detailMessage:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 104
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 105
    return v1

    .line 107
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    .line 108
    .local v0, "other":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    iget v2, v0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->numeric:I

    iget v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->numeric:I

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->detailMessage:Ljava/lang/String;

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->detailMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->detailMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 80
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->numeric:I

    return v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 95
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->numeric:I

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->detailMessage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 117
    const-string v0, ""

    .line 118
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->numeric:I

    if-nez v1, :cond_0

    .line 119
    const-string v0, "VERIFIED_NOTYET"

    .line 121
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 122
    const-string v0, "VERIFIED_OK"

    .line 124
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 125
    const-string v0, "VERIFIED_REJECTED"

    .line 127
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->detailMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    return-object v0
.end method
