.class public Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;
.super Ljava/lang/Object;
.source "JavadocBlockTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;
    }
.end annotation


# instance fields
.field private content:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

.field private name:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tagName:Ljava/lang/String;

.field private type:Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 99
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;->fromName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;-><init>(Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->tagName:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "content"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

    .line 89
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->type:Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;

    .line 90
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;->access$000(Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->tagName:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->nextWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

    .line 93
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 95
    :cond_0
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->parseText(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->content:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    .line 96
    return-void
.end method

.method public static createParamBlockTag(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;
    .locals 4
    .param p0, "paramName"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramName",
            "content"
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;->PARAM:Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;-><init>(Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic lambda$toText$0(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "sb",
            "s"
        }
    .end annotation

    .line 127
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 138
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 140
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;

    .line 142
    .local v1, "that":Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->type:Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;

    iget-object v3, v1, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->type:Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;

    if-eq v2, v3, :cond_2

    return v0

    .line 143
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->content:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    iget-object v3, v1, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->content:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 144
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

    iget-object v2, v1, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 138
    .end local v1    # "that":Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;
    :cond_4
    :goto_0
    return v0
.end method

.method public getContent()Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->content:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    return-object v0
.end method

.method public getName()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->type:Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->type:Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;->hashCode()I

    move-result v0

    .line 150
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->content:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 151
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 152
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JavadocBlockTag{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->type:Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->content:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

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

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->name:Ljava/util/Optional;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 128
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->content:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/JavadocBlockTag;->content:Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->toText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
