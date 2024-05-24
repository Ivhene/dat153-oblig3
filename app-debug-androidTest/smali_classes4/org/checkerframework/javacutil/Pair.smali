.class public Lorg/checkerframework/javacutil/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV1;"
        }
    .end annotation
.end field

.field private hashCode:I

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV2;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;TV2;)V"
        }
    .end annotation

    .line 17
    .local p0, "this":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<TV1;TV2;>;"
    .local p1, "v1":Ljava/lang/Object;, "TV1;"
    .local p2, "v2":Ljava/lang/Object;, "TV2;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/javacutil/Pair;->hashCode:I

    .line 18
    iput-object p1, p0, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    .line 19
    iput-object p2, p0, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/checkerframework/javacutil/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(TV1;TV2;)",
            "Lorg/checkerframework/javacutil/Pair<",
            "TV1;TV2;>;"
        }
    .end annotation

    .line 23
    .local p0, "v1":Ljava/lang/Object;, "TV1;"
    .local p1, "v2":Ljava/lang/Object;, "TV2;"
    new-instance v0, Lorg/checkerframework/javacutil/Pair;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/javacutil/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 45
    .local p0, "this":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<TV1;TV2;>;"
    instance-of v0, p1, Lorg/checkerframework/javacutil/Pair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 46
    return v1

    .line 49
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/javacutil/Pair;

    .line 50
    .local v0, "other":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<TV1;TV2;>;"
    iget-object v2, p0, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    iget-object v3, v0, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    iget-object v3, v0, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 37
    .local p0, "this":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<TV1;TV2;>;"
    iget v0, p0, Lorg/checkerframework/javacutil/Pair;->hashCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 38
    iget-object v0, p0, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    iget-object v1, p0, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/javacutil/Pair;->hashCode:I

    .line 40
    :cond_0
    iget v0, p0, Lorg/checkerframework/javacutil/Pair;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 29
    .local p0, "this":Lorg/checkerframework/javacutil/Pair;, "Lorg/checkerframework/javacutil/Pair<TV1;TV2;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pair("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/javacutil/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/javacutil/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
