.class public Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;
.super Ljava/lang/Object;
.source "LevenshteinResults.java"


# instance fields
.field private final deleteCount:Ljava/lang/Integer;

.field private final distance:Ljava/lang/Integer;

.field private final insertCount:Ljava/lang/Integer;

.field private final substituteCount:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "distance"    # Ljava/lang/Integer;
    .param p2, "insertCount"    # Ljava/lang/Integer;
    .param p3, "deleteCount"    # Ljava/lang/Integer;
    .param p4, "substituteCount"    # Ljava/lang/Integer;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    .line 60
    iput-object p2, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    .line 61
    iput-object p3, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    .line 62
    iput-object p4, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 104
    return v0

    .line 106
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;

    .line 110
    .local v2, "result":Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;
    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    iget-object v4, v2, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    iget-object v4, v2, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    iget-object v4, v2, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    .line 111
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    iget-object v4, v2, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    .line 112
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 110
    :goto_0
    return v0

    .line 107
    .end local v2    # "result":Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;
    :cond_3
    :goto_1
    return v1
.end method

.method public getDeleteCount()Ljava/lang/Integer;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDistance()Ljava/lang/Integer;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    return-object v0
.end method

.method public getInsertCount()Ljava/lang/Integer;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSubstituteCount()Ljava/lang/Integer;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 117
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    iget-object v3, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Distance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->distance:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Insert: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->insertCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Delete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->deleteCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Substitute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/similarity/LevenshteinResults;->substituteCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
