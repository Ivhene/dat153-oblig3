.class Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$2;
.super Ljava/lang/Object;
.source "UBQualifier.java"

# interfaces
.implements Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$OffsetEquationFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;->removeSequenceLengthAccessAndNeg1(Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/UBQualifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

.field final synthetic val$sequences:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    .line 833
    iput-object p1, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$2;->this$0:Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf;

    iput-object p2, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$2;->val$sequences:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute(Lorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    .locals 3
    .param p1, "eq"    # Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    .line 836
    iget-object v0, p0, Lorg/checkerframework/checker/index/upperbound/UBQualifier$LessThanLengthOf$2;->val$sequences:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->removeSequenceLengths(Ljava/util/List;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v0

    .line 837
    .local v0, "newEq":Lorg/checkerframework/checker/index/upperbound/OffsetEquation;
    if-nez v0, :cond_0

    .line 838
    const/4 v1, 0x0

    return-object v1

    .line 840
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->getInt()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 841
    const/16 v1, 0x2b

    sget-object v2, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->ONE:Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/checker/index/upperbound/OffsetEquation;->copyAdd(CLorg/checkerframework/checker/index/upperbound/OffsetEquation;)Lorg/checkerframework/checker/index/upperbound/OffsetEquation;

    move-result-object v1

    return-object v1

    .line 843
    :cond_1
    return-object v0
.end method
