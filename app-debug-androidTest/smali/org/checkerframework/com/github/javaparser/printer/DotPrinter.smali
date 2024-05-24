.class public Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;
.super Ljava/lang/Object;
.source "DotPrinter.java"


# instance fields
.field private nodeCount:I

.field private final outputNodeType:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "outputNodeType"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputNodeType"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->outputNodeType:Z

    .line 45
    return-void
.end method

.method private static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 109
    const-string v0, "\""

    const-string v1, "\\\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private nextNodeName()Ljava/lang/String;
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->nodeCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->nodeCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public output(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;
    .locals 3
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->nodeCount:I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "output":Ljava/lang/StringBuilder;
    const-string v1, "digraph {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const/4 v1, 0x0

    const-string v2, "root"

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->output(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public output(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 19
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "parentNodeName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "builder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "node",
            "parentNodeName",
            "name",
            "builder"
        }
    .end annotation

    .line 57
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;

    move-result-object v4

    .line 59
    .local v4, "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;->getAllPropertyMetaModels()Ljava/util/List;

    move-result-object v5

    .line 60
    .local v5, "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda1;-><init>()V

    .line 61
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 62
    .local v6, "attributes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda2;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda1;-><init>()V

    .line 63
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 64
    .local v7, "subNodes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda3;

    invoke-direct {v9}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    .line 65
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 67
    .local v8, "subLists":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    invoke-direct/range {p0 .. p0}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->nextNodeName()Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, "ndName":Ljava/lang/String;
    iget-boolean v10, v0, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->outputNodeType:Z

    const-string v11, "\"];"

    const-string v12, " [label=\""

    if-eqz v10, :cond_0

    .line 69
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, " ("

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ")\"];"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 72
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p3 .. p3}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :goto_0
    const-string v10, ";"

    const-string v13, " -> "

    if-eqz v2, :cond_1

    .line 75
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

    .line 78
    .local v15, "a":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    invoke-direct/range {p0 .. p0}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->nextNodeName()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "attrName":Ljava/lang/String;
    move-object/from16 v16, v4

    .end local v4    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .local v16, "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    .end local v5    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    .local v17, "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    sget-object v5, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 80
    invoke-virtual {v15, v1}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'\"];"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .end local v2    # "attrName":Ljava/lang/String;
    .end local v15    # "a":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    move-object/from16 v2, p2

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    goto :goto_1

    .line 85
    .end local v16    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .end local v17    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    .restart local v4    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .restart local v5    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    :cond_2
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .end local v5    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    .restart local v16    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .restart local v17    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

    .line 86
    .local v4, "sn":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    invoke-virtual {v4, v1}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 87
    .local v5, "nd":Lorg/checkerframework/com/github/javaparser/ast/Node;
    if-eqz v5, :cond_3

    .line 88
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v5, v9, v14, v3}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->output(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 89
    .end local v4    # "sn":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    .end local v5    # "nd":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_3
    goto :goto_2

    .line 91
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

    .line 92
    .local v4, "sl":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    invoke-virtual {v4, v1}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 93
    .local v5, "nl":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 94
    invoke-direct/range {p0 .. p0}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->nextNodeName()Ljava/lang/String;

    move-result-object v14

    .line 95
    .local v14, "ndLstName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lorg/checkerframework/com/github/javaparser/utils/Utils;->EOL:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v18, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "slName":Ljava/lang/String;
    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 99
    .local v15, "nd":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {v0, v15, v14, v1, v3}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter;->output(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .end local v15    # "nd":Lorg/checkerframework/com/github/javaparser/ast/Node;
    goto :goto_4

    .line 93
    .end local v1    # "slName":Ljava/lang/String;
    .end local v14    # "ndLstName":Ljava/lang/String;
    :cond_5
    move-object/from16 v18, v2

    .line 101
    .end local v4    # "sl":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    .end local v5    # "nl":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    :cond_6
    move-object/from16 v1, p1

    move-object/from16 v2, v18

    goto/16 :goto_3

    .line 102
    :cond_7
    return-void
.end method
