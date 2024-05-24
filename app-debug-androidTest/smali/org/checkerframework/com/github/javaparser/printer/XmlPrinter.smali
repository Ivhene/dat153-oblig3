.class public Lorg/checkerframework/com/github/javaparser/printer/XmlPrinter;
.super Ljava/lang/Object;
.source "XmlPrinter.java"


# instance fields
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/printer/XmlPrinter;->outputNodeType:Z

    .line 21
    return-void
.end method

.method private static attribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static close(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static print(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 3
    .param p0, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .line 78
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/XmlPrinter;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/XmlPrinter;-><init>(Z)V

    invoke-virtual {v1, p0}, Lorg/checkerframework/com/github/javaparser/printer/XmlPrinter;->output(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    return-void
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

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .local v0, "output":Ljava/lang/StringBuilder;
    const-string v1, "root"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/checkerframework/com/github/javaparser/printer/XmlPrinter;->output(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public output(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .locals 18
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "level"    # I
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
            "name",
            "level",
            "builder"
        }
    .end annotation

    .line 30
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;

    move-result-object v3

    .line 32
    .local v3, "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;->getAllPropertyMetaModels()Ljava/util/List;

    move-result-object v4

    .line 33
    .local v4, "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 34
    .local v5, "attributes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 35
    .local v6, "subNodes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda3;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 37
    .local v7, "subLists":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    const-string v8, "<"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget-boolean v9, v0, Lorg/checkerframework/com/github/javaparser/printer/XmlPrinter;->outputNodeType:Z

    if-eqz v9, :cond_0

    .line 39
    const-string v9, "type"

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lorg/checkerframework/com/github/javaparser/printer/XmlPrinter;->attribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

    .line 43
    .local v11, "attributeMetaModel":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    invoke-virtual {v11}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v1}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lorg/checkerframework/com/github/javaparser/printer/XmlPrinter;->attribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .end local v11    # "attributeMetaModel":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    goto :goto_0

    .line 45
    :cond_1
    const-string v9, ">"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

    .line 48
    .local v12, "subNodeMetaModel":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    invoke-virtual {v12, v1}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 49
    .local v13, "value":Lorg/checkerframework/com/github/javaparser/ast/Node;
    if-eqz v13, :cond_2

    .line 50
    invoke-virtual {v12}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v15, p3, 0x1

    invoke-virtual {v0, v13, v14, v15, v2}, Lorg/checkerframework/com/github/javaparser/printer/XmlPrinter;->output(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 52
    .end local v12    # "subNodeMetaModel":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    .end local v13    # "value":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_2
    goto :goto_1

    .line 54
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

    .line 55
    .local v12, "subListMetaModel":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    invoke-virtual {v12, v1}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 56
    .local v13, "subList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 57
    invoke-virtual {v12}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v14

    .line 58
    .local v14, "listName":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    const/4 v1, 0x0

    invoke-virtual {v14, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "singular":Ljava/lang/String;
    invoke-virtual {v13}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v3

    .end local v3    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .local v17, "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    move-object/from16 v3, v16

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 61
    .local v3, "subListNode":Lorg/checkerframework/com/github/javaparser/ast/Node;
    move-object/from16 v16, v4

    .end local v4    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    .local v16, "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Lorg/checkerframework/com/github/javaparser/printer/XmlPrinter;->output(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 62
    .end local v3    # "subListNode":Lorg/checkerframework/com/github/javaparser/ast/Node;
    move-object/from16 v4, v16

    move-object/from16 v3, v17

    goto :goto_3

    .line 63
    .end local v16    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    .end local v17    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .local v3, "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .restart local v4    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    :cond_4
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .end local v3    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .end local v4    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    .restart local v16    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    .restart local v17    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    invoke-static {v14}, Lorg/checkerframework/com/github/javaparser/printer/XmlPrinter;->close(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 56
    .end local v1    # "singular":Ljava/lang/String;
    .end local v14    # "listName":Ljava/lang/String;
    .end local v16    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    .end local v17    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .restart local v3    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .restart local v4    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    :cond_5
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    .line 65
    .end local v3    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .end local v4    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    .end local v12    # "subListMetaModel":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    .end local v13    # "subList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    .restart local v16    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    .restart local v17    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    :goto_4
    move-object/from16 v1, p1

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    goto :goto_2

    .line 66
    .end local v16    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    .end local v17    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .restart local v3    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .restart local v4    # "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    :cond_6
    invoke-static/range {p2 .. p2}, Lorg/checkerframework/com/github/javaparser/printer/XmlPrinter;->close(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    return-void
.end method
