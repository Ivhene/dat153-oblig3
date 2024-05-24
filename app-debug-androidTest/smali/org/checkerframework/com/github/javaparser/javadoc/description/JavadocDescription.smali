.class public Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;
.super Ljava/lang/Object;
.source "JavadocDescription.java"


# instance fields
.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;",
            ">;)V"
        }
    .end annotation

    .line 73
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;-><init>()V

    .line 75
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    return-void
.end method

.method private static indexOfNextInlineTag(Ljava/lang/String;I)Lorg/checkerframework/com/github/javaparser/utils/Pair;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "start"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "start"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lorg/checkerframework/com/github/javaparser/utils/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 56
    const-string v0, "{@"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 57
    .local v0, "index":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 58
    return-object v1

    .line 61
    :cond_0
    const-string v3, "}"

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 62
    .local v3, "closeIndex":I
    if-ne v3, v2, :cond_1

    .line 63
    return-object v1

    .line 65
    :cond_1
    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lorg/checkerframework/com/github/javaparser/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method static synthetic lambda$toText$0(Ljava/lang/StringBuilder;Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "e"    # Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "sb",
            "e"
        }
    .end annotation

    .line 88
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;->toText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static parseText(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;-><init>()V

    .line 40
    .local v0, "instance":Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;
    const/4 v1, 0x0

    .line 42
    .local v1, "index":I
    :goto_0
    invoke-static {p0, v1}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->indexOfNextInlineTag(Ljava/lang/String;I)Lorg/checkerframework/com/github/javaparser/utils/Pair;

    move-result-object v2

    move-object v3, v2

    .local v3, "nextInlineTagPos":Lorg/checkerframework/com/github/javaparser/utils/Pair;, "Lorg/checkerframework/com/github/javaparser/utils/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_1

    .line 43
    iget-object v2, v3, Lorg/checkerframework/com/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 44
    new-instance v2, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocSnippet;

    iget-object v4, v3, Lorg/checkerframework/com/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocSnippet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->addElement(Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;)Z

    .line 46
    :cond_0
    iget-object v2, v3, Lorg/checkerframework/com/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v4, v3, Lorg/checkerframework/com/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocInlineTag;->fromText(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->addElement(Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;)Z

    .line 47
    iget-object v2, v3, Lorg/checkerframework/com/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 50
    new-instance v2, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocSnippet;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocSnippet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->addElement(Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;)Z

    .line 52
    :cond_2
    return-object v0
.end method


# virtual methods
.method public addElement(Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;)Z
    .locals 1
    .param p1, "element"    # Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 98
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 99
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;

    .line 103
    .local v0, "that":Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    iget-object v2, v0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 99
    .end local v0    # "that":Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescriptionElement;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 93
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->toText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JavadocDescription{elements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

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

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription;->elements:Ljava/util/List;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/javadoc/description/JavadocDescription$$ExternalSyntheticLambda0;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
