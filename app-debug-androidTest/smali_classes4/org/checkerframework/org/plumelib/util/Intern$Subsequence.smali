.class final Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;
.super Ljava/lang/Object;
.source "Intern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/util/Intern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Subsequence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public end:I

.field public seq:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public start:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 1
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1093
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;, "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<TT;>;"
    .local p1, "seq":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1094
    invoke-static {}, Lorg/checkerframework/org/plumelib/util/Intern;->access$900()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/checkerframework/org/plumelib/util/Intern;->isInterned(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1095
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1097
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->seq:Ljava/lang/Object;

    .line 1098
    iput p2, p0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->start:I

    .line 1099
    iput p3, p0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->end:I

    .line 1100
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1107
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;, "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<TT;>;"
    instance-of v0, p1, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;

    if-eqz v0, :cond_0

    .line 1109
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;

    .line 1110
    .local v0, "otherSai":Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;, "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<TT;>;"
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->equalsSubsequence(Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;)Z

    move-result v1

    return v1

    .line 1112
    .end local v0    # "otherSai":Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;, "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<TT;>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equalsSubsequence(Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<",
            "TT;>;)Z"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1125
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;, "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<TT;>;"
    .local p1, "other":Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;, "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->seq:Ljava/lang/Object;

    iget-object v1, p1, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->seq:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->start:I

    iget v1, p1, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->start:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->end:I

    iget v1, p1, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->end:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 1131
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;, "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->seq:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->start:I

    mul-int/lit8 v1, v1, 0x1e

    add-int/2addr v0, v1

    iget v1, p0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->end:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 1138
    .local p0, "this":Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;, "Lorg/checkerframework/org/plumelib/util/Intern$Subsequence<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAI("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/plumelib/util/Intern$Subsequence;->seq:Ljava/lang/Object;

    invoke-static {v1}, Lorg/checkerframework/org/plumelib/util/ArraysPlume;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
