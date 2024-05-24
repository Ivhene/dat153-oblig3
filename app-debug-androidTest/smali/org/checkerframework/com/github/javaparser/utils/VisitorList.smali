.class public Lorg/checkerframework/com/github/javaparser/utils/VisitorList;
.super Ljava/lang/Object;
.source "VisitorList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TN;>;"
    }
.end annotation


# instance fields
.field protected final equalsVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "Ljava/lang/Boolean;",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;",
            ">;"
        }
    .end annotation
.end field

.field protected final hashcodeVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected innerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<",
            "TN;>.EqualsHashcodeOverridingFacade;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hashcodeVisitor",
            "equalsVisitor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Void;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
            "Ljava/lang/Boolean;",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    .local p1, "hashcodeVisitor":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<Ljava/lang/Integer;Ljava/lang/Void;>;"
    .local p2, "equalsVisitor":Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<Ljava/lang/Boolean;Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->hashcodeVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;

    .line 52
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->equalsVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    .line 54
    return-void
.end method

.method static synthetic lambda$toArray$0(Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p0, "facade"    # Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "facade"
        }
    .end annotation

    .line 254
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toArray$1(Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p0, "facade"    # Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "facade"
        }
    .end annotation

    .line 259
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "elem"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->add(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    return-void
.end method

.method public add(ILorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "elem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    .local p2, "elem":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 64
    return-void
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "elem"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    check-cast p1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    .local p1, "elem":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-direct {v1, p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "col"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TN;>;)Z"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    .local p2, "col":Ljava/util/Collection;, "Ljava/util/Collection<+TN;>;"
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 80
    .local v1, "elem":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->size()I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 81
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    goto :goto_1

    .line 83
    :cond_1
    invoke-virtual {p0, p1, v1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->add(ILorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 84
    :goto_1
    nop

    .end local v1    # "elem":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    add-int/lit8 p1, p1, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TN;>;)Z"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<+TN;>;"
    const/4 v0, 0x0

    .line 69
    .local v0, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 70
    .local v2, "elem":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 70
    .end local v2    # "elem":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    :cond_0
    goto :goto_0

    .line 72
    :cond_1
    return v0
.end method

.method public clear()V
    .locals 1

    .line 91
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 92
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elem"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 102
    .local v1, "elem":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    const/4 v0, 0x0

    return v0

    .line 102
    .end local v1    # "elem":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TN;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elem"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 119
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;

    invoke-direct {v0, p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$1;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elem"
        }
    .end annotation

    .line 146
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TN;>;"
        }
    .end annotation

    .line 151
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TN;>;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$2;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;I)V

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TN;"
        }
    .end annotation

    .line 213
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "elem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elem"
        }
    .end annotation

    .line 208
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    move-object v2, p1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-direct {v1, p0, v2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 218
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 219
    .local v0, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 220
    .local v2, "elem":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 220
    .end local v2    # "elem":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 222
    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "col"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 227
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->size()I

    move-result v0

    .line 228
    .local v0, "oldSize":I
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->clear()V

    .line 229
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->addAll(Ljava/util/Collection;)Z

    .line 230
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->size()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "index",
            "elem"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    check-cast p2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "elem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)TN;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    .local p2, "elem":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TN;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 240
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 7
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TN;>;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    new-instance v6, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->hashcodeVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->equalsVisitor:Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$3;-><init>(Lorg/checkerframework/com/github/javaparser/utils/VisitorList;Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;II)V

    return-object v6
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 254
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 259
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    .local p1, "arr":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 264
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/utils/VisitorList;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->size()I

    move-result v1

    const-string v2, "]"

    if-nez v1, :cond_0

    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 267
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/VisitorList;->innerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;

    .line 268
    .local v3, "facade":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>.EqualsHashcodeOverridingFacade;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;->access$000(Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/Node;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .end local v3    # "facade":Lorg/checkerframework/com/github/javaparser/utils/VisitorList$EqualsHashcodeOverridingFacade;, "Lorg/checkerframework/com/github/javaparser/utils/VisitorList<TN;>.EqualsHashcodeOverridingFacade;"
    goto :goto_0

    .line 270
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
