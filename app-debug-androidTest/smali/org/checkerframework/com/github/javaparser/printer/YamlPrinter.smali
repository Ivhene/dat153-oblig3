.class public Lorg/checkerframework/com/github/javaparser/printer/YamlPrinter;
.super Ljava/lang/Object;
.source "YamlPrinter.java"


# static fields
.field private static final NUM_SPACES_FOR_INDENT:I = 0x4


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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lorg/checkerframework/com/github/javaparser/printer/YamlPrinter;->outputNodeType:Z

    .line 44
    return-void
.end method

.method private escapeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string v2, "\\"

    const-string v3, "\\\\"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 104
    const-string v3, "\\\\\""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    const-string v3, "\n"

    const-string v4, "\\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 106
    const-string v3, "\r"

    const-string v4, "\\r"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 107
    const-string v3, "\u000c"

    const-string v4, "\\f"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 108
    const-string v3, "\u0008"

    const-string v4, "\\b"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 109
    const-string v3, "\t"

    const-string v4, "\\t"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    return-object v0
.end method

.method private indent(I)Ljava/lang/String;
    .locals 4
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 96
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 97
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 95
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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

    .line 113
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/YamlPrinter;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/YamlPrinter;-><init>(Z)V

    invoke-virtual {v1, p0}, Lorg/checkerframework/com/github/javaparser/printer/YamlPrinter;->output(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
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

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "output":Ljava/lang/StringBuilder;
    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "root"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/checkerframework/com/github/javaparser/printer/YamlPrinter;->output(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public output(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .locals 17
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

    .line 55
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getMetaModel()Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;

    move-result-object v5

    .line 57
    .local v5, "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;->getAllPropertyMetaModels()Ljava/util/List;

    move-result-object v6

    .line 58
    .local v6, "allPropertyMetaModels":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda1;-><init>()V

    .line 59
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 60
    .local v7, "attributes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda2;

    invoke-direct {v9}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda1;

    invoke-direct {v9}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda1;-><init>()V

    .line 61
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 62
    .local v8, "subNodes":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v9

    new-instance v10, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda3;

    invoke-direct {v10}, Lorg/checkerframework/com/github/javaparser/printer/DotPrinter$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v9

    .line 63
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 65
    .local v9, "subLists":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;>;"
    iget-boolean v10, v0, Lorg/checkerframework/com/github/javaparser/printer/YamlPrinter;->outputNodeType:Z

    const-string v11, ": "

    if-eqz v10, :cond_0

    .line 66
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {v0, v3}, Lorg/checkerframework/com/github/javaparser/printer/YamlPrinter;->indent(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "(Type="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;->getTypeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "): "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 68
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {v0, v3}, Lorg/checkerframework/com/github/javaparser/printer/YamlPrinter;->indent(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :goto_0
    add-int/lit8 v3, v3, 0x1

    .line 71
    .end local p3    # "level":I
    .local v3, "level":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

    .line 72
    .local v12, "a":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-direct {v0, v3}, Lorg/checkerframework/com/github/javaparser/printer/YamlPrinter;->indent(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12, v1}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/checkerframework/com/github/javaparser/printer/YamlPrinter;->escapeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .end local v12    # "a":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    goto :goto_1

    .line 75
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

    .line 76
    .local v12, "sn":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    invoke-virtual {v12, v1}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 77
    .local v13, "nd":Lorg/checkerframework/com/github/javaparser/ast/Node;
    if-eqz v13, :cond_2

    .line 78
    invoke-virtual {v12}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v13, v14, v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/YamlPrinter;->output(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 79
    .end local v12    # "sn":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    .end local v13    # "nd":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_2
    goto :goto_2

    .line 81
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;

    .line 82
    .local v12, "sl":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    invoke-virtual {v12, v1}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getValue(Lorg/checkerframework/com/github/javaparser/ast/Node;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 83
    .local v13, "nl":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    if-eqz v13, :cond_6

    invoke-virtual {v13}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 84
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-direct {v0, v3}, Lorg/checkerframework/com/github/javaparser/printer/YamlPrinter;->indent(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v12}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v14

    .line 86
    .local v14, "slName":Ljava/lang/String;
    const-string v15, "s"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v12}, Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    const/4 v1, 0x0

    invoke-virtual {v14, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move-object v1, v14

    .line 87
    .end local v14    # "slName":Ljava/lang/String;
    .local v1, "slName":Ljava/lang/String;
    :goto_4
    invoke-virtual {v13}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 88
    .local v15, "nd":Lorg/checkerframework/com/github/javaparser/ast/Node;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    .end local v5    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .local v16, "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    const-string v5, "- "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v15, v2, v5, v4}, Lorg/checkerframework/com/github/javaparser/printer/YamlPrinter;->output(Lorg/checkerframework/com/github/javaparser/ast/Node;Ljava/lang/String;ILjava/lang/StringBuilder;)V

    move-object/from16 v2, p2

    move-object/from16 v5, v16

    .end local v15    # "nd":Lorg/checkerframework/com/github/javaparser/ast/Node;
    goto :goto_5

    .line 87
    .end local v16    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .restart local v5    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    :cond_5
    move-object/from16 v16, v5

    .end local v5    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .restart local v16    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    goto :goto_6

    .line 83
    .end local v1    # "slName":Ljava/lang/String;
    .end local v16    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .restart local v5    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    :cond_6
    move-object/from16 v16, v5

    .line 90
    .end local v5    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .end local v12    # "sl":Lorg/checkerframework/com/github/javaparser/metamodel/PropertyMetaModel;
    .end local v13    # "nl":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<+Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    .restart local v16    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    :goto_6
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v5, v16

    goto/16 :goto_3

    .line 91
    .end local v16    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    .restart local v5    # "metaModel":Lorg/checkerframework/com/github/javaparser/metamodel/NodeMetaModel;
    :cond_7
    return-void
.end method
