.class public Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;
.super Ljava/lang/Object;
.source "CsmList.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# instance fields
.field private final following:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

.field private final preceeding:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

.field private final property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

.field private final separatorPost:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

.field private final separatorPre:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)V
    .locals 6
    .param p1, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "property"
        }
    .end annotation

    .line 65
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    new-instance v3, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    new-instance v5, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 6
    .param p1, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p2, "separator"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "property",
            "separator"
        }
    .end annotation

    .line 61
    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    new-instance v4, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    new-instance v5, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0
    .param p1, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p2, "separatorPre"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p3, "separatorPost"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p4, "preceeding"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p5, "following"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "separatorPre",
            "separatorPost",
            "preceeding",
            "following"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 70
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPre:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 71
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPost:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 72
    iput-object p4, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->preceeding:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 73
    iput-object p5, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->following:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 74
    return-void
.end method


# virtual methods
.method public getFollowing()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->following:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0
.end method

.method public getPreceeding()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->preceeding:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0
.end method

.method public getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    return-object v0
.end method

.method public getSeparatorPost()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPost:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0
.end method

.method public getSeparatorPre()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPre:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0
.end method

.method public prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "printer"    # Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->isAboutNodes()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->getValueAsMultipleReference(Lorg/checkerframework/com/github/javaparser/ast/Node;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 80
    .local v0, "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    if-nez v0, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->preceeding:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v1, :cond_1

    .line 84
    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    .line 86
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 87
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPre:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 88
    invoke-interface {v2, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    .line 90
    :cond_2
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v2

    invoke-static {v2, p2}, Lorg/checkerframework/com/github/javaparser/printer/ConcreteSyntaxModel;->genericPrettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    .line 91
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPost:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3

    .line 92
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPost:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-interface {v2, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    .line 86
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->following:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v1, :cond_5

    .line 96
    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    .line 98
    .end local v0    # "nodeList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    :cond_5
    goto :goto_2

    .line 99
    :cond_6
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->property:Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;->getValueAsCollection(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/util/Collection;

    move-result-object v0

    .line 100
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez v0, :cond_7

    .line 101
    return-void

    .line 103
    :cond_7
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->preceeding:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v1, :cond_8

    .line 104
    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    .line 106
    :cond_8
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :cond_9
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 107
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPre:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 108
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPre:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-interface {v2, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    .line 110
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/PrintingHelper;->printToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 111
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPost:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 112
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->separatorPost:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-interface {v2, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    goto :goto_1

    .line 115
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmList;->following:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    if-eqz v1, :cond_c

    .line 116
    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    .line 119
    .end local v0    # "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    :cond_c
    :goto_2
    return-void
.end method
