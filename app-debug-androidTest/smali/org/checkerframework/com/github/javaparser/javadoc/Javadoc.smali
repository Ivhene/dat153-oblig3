.class public Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;
.super Ljava/lang/Object;
.source "Javadoc.java"


# instance fields
.field private blockTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;",
            ">;"
        }
    .end annotation
.end field

.field private description:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;)V
    .locals 1
    .param p1, "description"    # Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->description:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    .line 48
    return-void
.end method

.method static synthetic lambda$toText$0(Ljava/lang/StringBuilder;Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "bt"    # Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "sb",
            "bt"
        }
    .end annotation

    .line 92
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->toText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    return-void
.end method


# virtual methods
.method public addBlockTag(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagName"
        }
    .end annotation

    .line 75
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->addBlockTag(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;

    move-result-object v0

    return-object v0
.end method

.method public addBlockTag(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tagName",
            "content"
        }
    .end annotation

    .line 61
    new-instance v0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;

    invoke-direct {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->addBlockTag(Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;)Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;

    move-result-object v0

    return-object v0
.end method

.method public addBlockTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;
    .locals 2
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tagName",
            "parameter",
            "content"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->addBlockTag(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;

    move-result-object v0

    return-object v0
.end method

.method public addBlockTag(Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;)Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;
    .locals 1
    .param p1, "blockTag"    # Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockTag"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-object p0
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

    .line 143
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 144
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 146
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;

    .line 148
    .local v2, "document":Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->description:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->description:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 144
    .end local v2    # "document":Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;
    :cond_3
    :goto_1
    return v1
.end method

.method public getBlockTags()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->description:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 154
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->description:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->hashCode()I

    move-result v0

    .line 155
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 156
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toComment()Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    .locals 1

    .line 102
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->toComment(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    move-result-object v0

    return-object v0
.end method

.method public toComment(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    .locals 7
    .param p1, "indentation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indentation"
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-char v4, v0, v3

    .line 110
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 109
    .end local v4    # "c":C
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    .restart local v4    # "c":C
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The indentation string should be composed only by whitespace characters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    .end local v4    # "c":C
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->toText()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 118
    sget-object v3, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 119
    .local v5, "line":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v6, " * "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    sget-object v6, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .end local v5    # "line":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Javadoc{description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->description:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blockTags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toText()Ljava/lang/String;
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->description:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->description:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->toText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    sget-object v1, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    sget-object v1, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;->blockTags:Ljava/util/List;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
