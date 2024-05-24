.class public abstract Lscenelib/annotations/el/TypeASTMapper;
.super Ljava/lang/Object;
.source "TypeASTMapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 37
    .local p0, "this":Lscenelib/annotations/el/TypeASTMapper;, "Lscenelib/annotations/el/TypeASTMapper<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private static getInnerType(Lscenelib/annotations/el/ATypeElement;Ljava/util/List;)Lscenelib/annotations/el/ATypeElement;
    .locals 2
    .param p0, "te"    # Lscenelib/annotations/el/ATypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscenelib/annotations/el/ATypeElement;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)",
            "Lscenelib/annotations/el/ATypeElement;"
        }
    .end annotation

    .line 42
    .local p1, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    return-object p0

    .line 45
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    new-instance v1, Lscenelib/annotations/el/InnerTypeLocation;

    invoke-direct {v1, p1}, Lscenelib/annotations/el/InnerTypeLocation;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    return-object v0
.end method

.method private traverse1(Ljava/lang/Object;Lscenelib/annotations/el/ATypeElement;Ljava/util/List;)V
    .locals 6
    .param p2, "te"    # Lscenelib/annotations/el/ATypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lscenelib/annotations/el/ATypeElement;",
            "Ljava/util/List<",
            "Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lscenelib/annotations/el/TypeASTMapper;, "Lscenelib/annotations/el/TypeASTMapper<TN;>;"
    .local p1, "n":Ljava/lang/Object;, "TN;"
    .local p3, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-virtual {p0, p1}, Lscenelib/annotations/el/TypeASTMapper;->getElementType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "elType":Ljava/lang/Object;, "TN;"
    if-nez v0, :cond_1

    .line 76
    invoke-static {p2, p3}, Lscenelib/annotations/el/TypeASTMapper;->getInnerType(Lscenelib/annotations/el/ATypeElement;Ljava/util/List;)Lscenelib/annotations/el/ATypeElement;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lscenelib/annotations/el/TypeASTMapper;->map(Ljava/lang/Object;Lscenelib/annotations/el/ATypeElement;)V

    .line 77
    invoke-virtual {p0, p1}, Lscenelib/annotations/el/TypeASTMapper;->numTypeArguments(Ljava/lang/Object;)I

    move-result v1

    .line 78
    .local v1, "nta":I
    const/4 v2, 0x0

    .local v2, "tai":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 79
    new-instance v3, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    sget-object v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-direct {v3, v4, v2}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;-><init>(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;I)V

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p0, p1, v2}, Lscenelib/annotations/el/TypeASTMapper;->getTypeArgument(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3}, Lscenelib/annotations/el/TypeASTMapper;->traverse1(Ljava/lang/Object;Lscenelib/annotations/el/ATypeElement;Ljava/util/List;)V

    .line 81
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {p3, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 78
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "nta":I
    .end local v2    # "tai":I
    :cond_0
    goto :goto_4

    .line 86
    :cond_1
    invoke-static {p2, p3}, Lscenelib/annotations/el/TypeASTMapper;->getInnerType(Lscenelib/annotations/el/ATypeElement;Ljava/util/List;)Lscenelib/annotations/el/ATypeElement;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lscenelib/annotations/el/TypeASTMapper;->map(Ljava/lang/Object;Lscenelib/annotations/el/ATypeElement;)V

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "layers":I
    :goto_1
    invoke-virtual {p0, p1}, Lscenelib/annotations/el/TypeASTMapper;->getElementType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_2

    .line 91
    sget-object v2, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;->ARRAY:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-static {p2, p3}, Lscenelib/annotations/el/TypeASTMapper;->getInnerType(Lscenelib/annotations/el/ATypeElement;Ljava/util/List;)Lscenelib/annotations/el/ATypeElement;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lscenelib/annotations/el/TypeASTMapper;->map(Ljava/lang/Object;Lscenelib/annotations/el/ATypeElement;)V

    .line 95
    move-object p1, v0

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {p0, p1}, Lscenelib/annotations/el/TypeASTMapper;->numTypeArguments(Ljava/lang/Object;)I

    move-result v2

    .line 103
    .local v2, "nta":I
    const/4 v3, 0x0

    .local v3, "tai":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 104
    new-instance v4, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;

    sget-object v5, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-direct {v4, v5, v3}, Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;-><init>(Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;I)V

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p0, p1, v3}, Lscenelib/annotations/el/TypeASTMapper;->getTypeArgument(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3}, Lscenelib/annotations/el/TypeASTMapper;->traverse1(Ljava/lang/Object;Lscenelib/annotations/el/ATypeElement;Ljava/util/List;)V

    .line 106
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 109
    .end local v3    # "tai":I
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 110
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 113
    .end local v1    # "layers":I
    .end local v2    # "nta":I
    .end local v3    # "i":I
    :cond_4
    :goto_4
    return-void
.end method


# virtual methods
.method protected abstract getElementType(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TN;"
        }
    .end annotation
.end method

.method protected abstract getTypeArgument(Ljava/lang/Object;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;I)TN;"
        }
    .end annotation
.end method

.method protected abstract map(Ljava/lang/Object;Lscenelib/annotations/el/ATypeElement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lscenelib/annotations/el/ATypeElement;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract numTypeArguments(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation
.end method

.method public traverse(Ljava/lang/Object;Lscenelib/annotations/el/ATypeElement;)V
    .locals 1
    .param p2, "aslRoot"    # Lscenelib/annotations/el/ATypeElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lscenelib/annotations/el/ATypeElement;",
            ")V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lscenelib/annotations/el/TypeASTMapper;, "Lscenelib/annotations/el/TypeASTMapper<TN;>;"
    .local p1, "tastRoot":Ljava/lang/Object;, "TN;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/sun/tools/javac/code/TypeAnnotationPosition$TypePathEntry;>;"
    invoke-direct {p0, p1, p2, v0}, Lscenelib/annotations/el/TypeASTMapper;->traverse1(Ljava/lang/Object;Lscenelib/annotations/el/ATypeElement;Ljava/util/List;)V

    .line 67
    return-void
.end method
