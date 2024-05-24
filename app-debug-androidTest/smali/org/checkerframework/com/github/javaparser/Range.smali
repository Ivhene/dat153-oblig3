.class public Lorg/checkerframework/com/github/javaparser/Range;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field public final begin:Lorg/checkerframework/com/github/javaparser/Position;

.field public final end:Lorg/checkerframework/com/github/javaparser/Position;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/Position;Lorg/checkerframework/com/github/javaparser/Position;)V
    .locals 2
    .param p1, "begin"    # Lorg/checkerframework/com/github/javaparser/Position;
    .param p2, "end"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "begin",
            "end"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p1, :cond_1

    .line 37
    if-eqz p2, :cond_0

    .line 40
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    .line 41
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    .line 42
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "end can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "begin can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static range(IIII)Lorg/checkerframework/com/github/javaparser/Range;
    .locals 3
    .param p0, "beginLine"    # I
    .param p1, "beginColumn"    # I
    .param p2, "endLine"    # I
    .param p3, "endColumn"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "beginLine",
            "beginColumn",
            "endLine",
            "endColumn"
        }
    .end annotation

    .line 49
    new-instance v0, Lorg/checkerframework/com/github/javaparser/Range;

    invoke-static {p0, p1}, Lorg/checkerframework/com/github/javaparser/Position;->pos(II)Lorg/checkerframework/com/github/javaparser/Position;

    move-result-object v1

    invoke-static {p2, p3}, Lorg/checkerframework/com/github/javaparser/Position;->pos(II)Lorg/checkerframework/com/github/javaparser/Position;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/Range;-><init>(Lorg/checkerframework/com/github/javaparser/Position;Lorg/checkerframework/com/github/javaparser/Position;)V

    return-object v0
.end method

.method public static range(Lorg/checkerframework/com/github/javaparser/Position;Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Range;
    .locals 1
    .param p0, "begin"    # Lorg/checkerframework/com/github/javaparser/Position;
    .param p1, "end"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "begin",
            "end"
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/checkerframework/com/github/javaparser/Range;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/Range;-><init>(Lorg/checkerframework/com/github/javaparser/Position;Lorg/checkerframework/com/github/javaparser/Position;)V

    return-object v0
.end method


# virtual methods
.method public contains(Lorg/checkerframework/com/github/javaparser/Position;)Z
    .locals 1
    .param p1, "position"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 88
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/Range;->strictlyContains(Lorg/checkerframework/com/github/javaparser/Position;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/Position;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/Position;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public contains(Lorg/checkerframework/com/github/javaparser/Range;)Z
    .locals 2
    .param p1, "other"    # Lorg/checkerframework/com/github/javaparser/Range;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    iget-object v1, p1, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/Position;->isBefore(Lorg/checkerframework/com/github/javaparser/Position;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    iget-object v1, p1, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/Position;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget-object v1, p1, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    .line 81
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/Position;->isAfter(Lorg/checkerframework/com/github/javaparser/Position;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget-object v1, p1, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/Position;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 80
    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 123
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 124
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 126
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/Range;

    .line 127
    .local v2, "range":Lorg/checkerframework/com/github/javaparser/Range;
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/Position;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/Position;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 124
    .end local v2    # "range":Lorg/checkerframework/com/github/javaparser/Range;
    :cond_3
    :goto_1
    return v1
.end method

.method public getLineCount()I
    .locals 2

    .line 141
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget v0, v0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    iget v1, v1, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 132
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/Position;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/Position;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isAfter(Lorg/checkerframework/com/github/javaparser/Position;)Z
    .locals 1
    .param p1, "position"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/Position;->isAfter(Lorg/checkerframework/com/github/javaparser/Position;)Z

    move-result v0

    return v0
.end method

.method public isBefore(Lorg/checkerframework/com/github/javaparser/Position;)Z
    .locals 1
    .param p1, "position"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/Position;->isBefore(Lorg/checkerframework/com/github/javaparser/Position;)Z

    move-result v0

    return v0
.end method

.method public overlapsWith(Lorg/checkerframework/com/github/javaparser/Range;)Z
    .locals 1
    .param p1, "other"    # Lorg/checkerframework/com/github/javaparser/Range;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 110
    iget-object v0, p1, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/Range;->strictlyContains(Lorg/checkerframework/com/github/javaparser/Position;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/Range;->strictlyContains(Lorg/checkerframework/com/github/javaparser/Position;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/Range;->strictlyContains(Lorg/checkerframework/com/github/javaparser/Position;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/Range;->strictlyContains(Lorg/checkerframework/com/github/javaparser/Position;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public strictlyContains(Lorg/checkerframework/com/github/javaparser/Position;)Z
    .locals 1
    .param p1, "position"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/Position;->isAfter(Lorg/checkerframework/com/github/javaparser/Position;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/Position;->isBefore(Lorg/checkerframework/com/github/javaparser/Position;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public strictlyContains(Lorg/checkerframework/com/github/javaparser/Range;)Z
    .locals 2
    .param p1, "other"    # Lorg/checkerframework/com/github/javaparser/Range;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    iget-object v1, p1, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/Position;->isBefore(Lorg/checkerframework/com/github/javaparser/Position;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    iget-object v1, p1, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/Position;->isAfter(Lorg/checkerframework/com/github/javaparser/Position;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withBegin(Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Range;
    .locals 1
    .param p1, "begin"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "begin"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-static {p1, v0}, Lorg/checkerframework/com/github/javaparser/Range;->range(Lorg/checkerframework/com/github/javaparser/Position;Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Range;

    move-result-object v0

    return-object v0
.end method

.method public withBeginColumn(I)Lorg/checkerframework/com/github/javaparser/Range;
    .locals 2
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/Position;->withColumn(I)Lorg/checkerframework/com/github/javaparser/Position;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/Range;->range(Lorg/checkerframework/com/github/javaparser/Position;Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Range;

    move-result-object v0

    return-object v0
.end method

.method public withBeginLine(I)Lorg/checkerframework/com/github/javaparser/Range;
    .locals 2
    .param p1, "line"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/Position;->withLine(I)Lorg/checkerframework/com/github/javaparser/Position;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/Range;->range(Lorg/checkerframework/com/github/javaparser/Position;Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Range;

    move-result-object v0

    return-object v0
.end method

.method public withEnd(Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Range;
    .locals 1
    .param p1, "end"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "end"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/Range;->range(Lorg/checkerframework/com/github/javaparser/Position;Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Range;

    move-result-object v0

    return-object v0
.end method

.method public withEndColumn(I)Lorg/checkerframework/com/github/javaparser/Range;
    .locals 2
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "column"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/github/javaparser/Position;->withColumn(I)Lorg/checkerframework/com/github/javaparser/Position;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/Range;->range(Lorg/checkerframework/com/github/javaparser/Position;Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Range;

    move-result-object v0

    return-object v0
.end method

.method public withEndLine(I)Lorg/checkerframework/com/github/javaparser/Range;
    .locals 2
    .param p1, "line"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "line"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/Range;->begin:Lorg/checkerframework/com/github/javaparser/Position;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/Range;->end:Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {v1, p1}, Lorg/checkerframework/com/github/javaparser/Position;->withLine(I)Lorg/checkerframework/com/github/javaparser/Position;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/Range;->range(Lorg/checkerframework/com/github/javaparser/Position;Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Range;

    move-result-object v0

    return-object v0
.end method
