.class public Lorg/checkerframework/com/github/javaparser/Position;
.super Ljava/lang/Object;
.source "Position.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/checkerframework/com/github/javaparser/Position;",
        ">;"
    }
.end annotation


# static fields
.field public static final HOME:Lorg/checkerframework/com/github/javaparser/Position;


# instance fields
.field public final column:I

.field public final line:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lorg/checkerframework/com/github/javaparser/Position;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lorg/checkerframework/com/github/javaparser/Position;-><init>(II)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/Position;->HOME:Lorg/checkerframework/com/github/javaparser/Position;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "line"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "column"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x2

    if-lt p1, v0, :cond_1

    .line 44
    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    .line 47
    iput p1, p0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    .line 48
    iput p2, p0, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    .line 49
    return-void

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t position at column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t position at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static pos(II)Lorg/checkerframework/com/github/javaparser/Position;
    .locals 1
    .param p0, "line"    # I
    .param p1, "column"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "line",
            "column"
        }
    .end annotation

    .line 55
    new-instance v0, Lorg/checkerframework/com/github/javaparser/Position;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/Position;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 31
    check-cast p1, Lorg/checkerframework/com/github/javaparser/Position;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/Position;->compareTo(Lorg/checkerframework/com/github/javaparser/Position;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/checkerframework/com/github/javaparser/Position;)I
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 125
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/Position;->isBefore(Lorg/checkerframework/com/github/javaparser/Position;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, -0x1

    return v0

    .line 129
    :cond_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/Position;->isAfter(Lorg/checkerframework/com/github/javaparser/Position;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_1
    const/4 v0, 0x0

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

    .line 137
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 138
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/Position;

    .line 142
    .local v2, "position":Lorg/checkerframework/com/github/javaparser/Position;
    iget v3, p0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    iget v4, v2, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    iget v4, v2, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 138
    .end local v2    # "position":Lorg/checkerframework/com/github/javaparser/Position;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 147
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    add-int/2addr v0, v1

    return v0
.end method

.method public invalid()Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/Position;->valid()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isAfter(Lorg/checkerframework/com/github/javaparser/Position;)Z
    .locals 4
    .param p1, "position"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 101
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget v0, p1, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 103
    :cond_0
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    if-le v1, v0, :cond_1

    .line 104
    return v2

    .line 105
    :cond_1
    const/4 v3, 0x0

    if-ne v1, v0, :cond_3

    .line 106
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    iget v1, p1, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    .line 108
    :cond_3
    return v3
.end method

.method public isBefore(Lorg/checkerframework/com/github/javaparser/Position;)Z
    .locals 4
    .param p1, "position"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 113
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget v0, p1, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    const/4 v1, -0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 115
    :cond_0
    iget v1, p0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    if-ge v1, v0, :cond_1

    .line 116
    return v2

    .line 117
    :cond_1
    const/4 v3, 0x0

    if-ne v1, v0, :cond_3

    .line 118
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    iget v1, p1, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_0
    return v2

    .line 120
    :cond_3
    return v3
.end method

.method public nextLine()Lorg/checkerframework/com/github/javaparser/Position;
    .locals 3

    .line 77
    new-instance v0, Lorg/checkerframework/com/github/javaparser/Position;

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lorg/checkerframework/com/github/javaparser/Position;->HOME:Lorg/checkerframework/com/github/javaparser/Position;

    iget v2, v2, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/Position;-><init>(II)V

    return-object v0
.end method

.method public orIfInvalid(Lorg/checkerframework/com/github/javaparser/Position;)Lorg/checkerframework/com/github/javaparser/Position;
    .locals 1
    .param p1, "anotherPosition"    # Lorg/checkerframework/com/github/javaparser/Position;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "anotherPosition"
        }
    .end annotation

    .line 93
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/Position;->valid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/Position;->invalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    return-object p1

    .line 95
    :cond_1
    :goto_0
    return-object p0
.end method

.method public right(I)Lorg/checkerframework/com/github/javaparser/Position;
    .locals 3
    .param p1, "characters"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "characters"
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/checkerframework/com/github/javaparser/Position;

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    iget v2, p0, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/Position;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",col "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valid()Z
    .locals 1

    .line 85
    iget v0, p0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public withColumn(I)Lorg/checkerframework/com/github/javaparser/Position;
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

    .line 59
    new-instance v0, Lorg/checkerframework/com/github/javaparser/Position;

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/Position;->line:I

    invoke-direct {v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/Position;-><init>(II)V

    return-object v0
.end method

.method public withLine(I)Lorg/checkerframework/com/github/javaparser/Position;
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

    .line 63
    new-instance v0, Lorg/checkerframework/com/github/javaparser/Position;

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    invoke-direct {v0, p1, v1}, Lorg/checkerframework/com/github/javaparser/Position;-><init>(II)V

    return-object v0
.end method
