.class public Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;
.super Ljava/lang/Object;
.source "JavadocInlineTag.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private tagName:Ljava/lang/String;

.field private type:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;Ljava/lang/String;)V
    .locals 0
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "type"    # Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tagName",
            "type",
            "content"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->tagName:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->type:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    .line 87
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->content:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public static fromText(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 35
    const-string v0, "{@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->nextWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "tagName":Ljava/lang/String;
    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->fromName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    move-result-object v1

    .line 44
    .local v1, "type":Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "content":Ljava/lang/String;
    new-instance v3, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;

    invoke-direct {v3, v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;-><init>(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;Ljava/lang/String;)V

    return-object v3

    .line 39
    .end local v0    # "tagName":Ljava/lang/String;
    .end local v1    # "type":Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;
    .end local v2    # "content":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected to end with \'}\'. Text \'%s\'"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected to start with \'{@\'. Text \'%s\'"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
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

    .line 109
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 110
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 112
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;

    .line 114
    .local v2, "that":Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->tagName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->tagName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->tagName:Ljava/lang/String;

    if-eqz v3, :cond_3

    :goto_0
    return v1

    .line 115
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->type:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    iget-object v4, v2, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->type:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    if-eq v3, v4, :cond_4

    return v1

    .line 116
    :cond_4
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->content:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v0, v2, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->content:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_5
    iget-object v3, v2, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->content:Ljava/lang/String;

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    return v0

    .line 110
    .end local v2    # "that":Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;
    :cond_7
    :goto_2
    return v1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->type:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 121
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->tagName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 122
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->type:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v2, v3

    .line 123
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->content:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    .line 124
    .end local v2    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JavadocInlineTag{tagName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->type:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag$Type;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toText()Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
