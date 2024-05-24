.class public final Lannotator/find/InClassCriterion;
.super Ljava/lang/Object;
.source "InClassCriterion.java"

# interfaces
.implements Lannotator/find/Criterion;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static anonclassPattern:Ljava/util/regex/Pattern;

.field static debug:Z

.field static localClassPattern:Ljava/util/regex/Pattern;


# instance fields
.field public final className:Ljava/lang/String;

.field private final exactMatch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    nop

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lannotator/find/InClassCriterion;->debug:Z

    .line 69
    const-string v0, "^([0-9]+)(\\$(.*))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lannotator/find/InClassCriterion;->anonclassPattern:Ljava/util/regex/Pattern;

    .line 70
    const-string v0, "^([0-9]+)([^$]+)(\\$(.*))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lannotator/find/InClassCriterion;->localClassPattern:Ljava/util/regex/Pattern;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "exactMatch"    # Z

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lannotator/find/InClassCriterion;->className:Ljava/lang/String;

    .line 43
    iput-boolean p2, p0, Lannotator/find/InClassCriterion;->exactMatch:Z

    .line 44
    return-void
.end method

.method private static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 270
    sget-boolean v0, Lannotator/find/InClassCriterion;->debug:Z

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0, p1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 273
    :cond_0
    return-void
.end method

.method public static isSatisfiedBy(Lcom/sun/source/util/TreePath;Ljava/lang/String;Z)Z
    .locals 17
    .param p0, "path"    # Lcom/sun/source/util/TreePath;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "exactMatch"    # Z

    .line 74
    move-object/from16 v1, p0

    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 75
    return v0

    .line 79
    :cond_0
    move-object/from16 v2, p1

    .line 83
    .local v2, "cname":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v3, "trees":Ljava/util/List;, "Ljava/util/List<Lcom/sun/source/tree/Tree;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sun/source/util/TreePath;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/source/tree/Tree;

    .line 85
    .local v5, "tree":Lcom/sun/source/tree/Tree;
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v5    # "tree":Lcom/sun/source/tree/Tree;
    goto :goto_0

    .line 87
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 89
    const/4 v4, 0x0

    .line 90
    .local v4, "insideMatch":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, ""

    if-ge v5, v6, :cond_17

    .line 91
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 92
    .local v6, "tree":Lcom/sun/source/tree/Tree;
    const/4 v8, 0x0

    .line 93
    .local v8, "checkAnon":Z
    const/4 v9, 0x0

    .line 95
    .local v9, "checkLocal":Z
    sget-object v10, Lannotator/find/InClassCriterion$1;->$SwitchMap$com$sun$source$tree$Tree$Kind:[I

    invoke-interface {v6}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sun/source/tree/Tree$Kind;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const-string v11, "$"

    const-string v12, "false InClassCriterion.isSatisfiedBy:%n  cname=%s%n  tree=%s%n"

    const-string v13, "."

    const-string v14, "InClassCriterion.isSatisfiedBy:%n  cname=%s%n  tree=%s%n"

    const/4 v15, 0x1

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_5

    .line 175
    :pswitch_0
    if-eqz v4, :cond_e

    .line 176
    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v12, v7}, Lannotator/find/InClassCriterion;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    return v0

    .line 163
    :pswitch_1
    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v14, v10}, Lannotator/find/InClassCriterion;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 165
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 167
    :cond_2
    move-object v7, v6

    check-cast v7, Lcom/sun/source/tree/NewClassTree;

    .line 168
    .local v7, "nc":Lcom/sun/source/tree/NewClassTree;
    invoke-interface {v7}, Lcom/sun/source/tree/NewClassTree;->getClassBody()Lcom/sun/source/tree/ClassTree;

    move-result-object v10

    if-eqz v10, :cond_3

    move v10, v15

    goto :goto_2

    :cond_3
    move v10, v0

    :goto_2
    move v8, v10

    .line 170
    .end local v7    # "nc":Lcom/sun/source/tree/NewClassTree;
    goto/16 :goto_5

    .line 115
    :pswitch_2
    if-lez v5, :cond_4

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/source/tree/Tree;

    invoke-interface {v7}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->NEW_CLASS:Lcom/sun/source/tree/Tree$Kind;

    if-ne v7, v10, :cond_4

    .line 120
    goto/16 :goto_5

    .line 122
    :cond_4
    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v14, v7}, Lannotator/find/InClassCriterion;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    if-lez v5, :cond_5

    add-int/lit8 v7, v5, -0x1

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/source/tree/Tree;

    invoke-interface {v7}, Lcom/sun/source/tree/Tree;->getKind()Lcom/sun/source/tree/Tree$Kind;

    move-result-object v7

    sget-object v10, Lcom/sun/source/tree/Tree$Kind;->BLOCK:Lcom/sun/source/tree/Tree$Kind;

    if-ne v7, v10, :cond_5

    .line 127
    const/4 v9, 0x1

    .line 128
    const-string v7, "found local class: InClassCriterion.isSatisfiedBy:%n  cname=%s%n  tree=%s%n"

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v7, v10}, Lannotator/find/InClassCriterion;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    goto/16 :goto_5

    .line 133
    :cond_5
    move-object v7, v6

    check-cast v7, Lcom/sun/source/tree/ClassTree;

    .line 134
    .local v7, "c":Lcom/sun/source/tree/ClassTree;
    invoke-interface {v7}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v10

    .line 136
    .local v10, "csn":Ljavax/lang/model/element/Name;
    if-eqz v10, :cond_b

    invoke-interface {v10}, Ljavax/lang/model/element/Name;->length()I

    move-result v14

    if-nez v14, :cond_6

    goto :goto_4

    .line 141
    :cond_6
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 142
    .local v14, "treeClassName":Ljava/lang/String;
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 143
    if-eqz p2, :cond_7

    .line 144
    const-string v2, ""

    goto/16 :goto_5

    .line 146
    :cond_7
    const-string v0, "true InClassCriterion.isSatisfiedBy:%n  cname=%s%n  tree=%s%n"

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v0, v11}, Lannotator/find/InClassCriterion;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    return v15

    .line 149
    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 150
    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    goto :goto_3

    .line 152
    :cond_9
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_e

    .line 155
    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v12, v11}, Lannotator/find/InClassCriterion;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    return v0

    .line 151
    :cond_a
    :goto_3
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 137
    .end local v14    # "treeClassName":Ljava/lang/String;
    :cond_b
    :goto_4
    const-string v12, "empty getSimpleName: InClassCriterion.isSatisfiedBy:%n  cname=%s%n  tree=%s%n"

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v13}, Lannotator/find/InClassCriterion;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    const/4 v8, 0x1

    .line 139
    goto :goto_5

    .line 97
    .end local v7    # "c":Lcom/sun/source/tree/ClassTree;
    .end local v10    # "csn":Ljavax/lang/model/element/Name;
    :pswitch_3
    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v14, v7}, Lannotator/find/InClassCriterion;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    move-object v7, v6

    check-cast v7, Lcom/sun/source/tree/CompilationUnitTree;

    invoke-interface {v7}, Lcom/sun/source/tree/CompilationUnitTree;->getPackageName()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v7

    .line 99
    .local v7, "packageTree":Lcom/sun/source/tree/ExpressionTree;
    if-nez v7, :cond_c

    goto :goto_5

    .line 102
    :cond_c
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 103
    .local v10, "declaredPackage":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 104
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 110
    .end local v10    # "declaredPackage":Ljava/lang/String;
    goto :goto_5

    .line 106
    .restart local v10    # "declaredPackage":Ljava/lang/String;
    :cond_d
    const-string v11, "false[COMPILATION_UNIT; bad declaredPackage = %s] InClassCriterion.isSatisfiedBy:%n  cname=%s%n  tree=%s%n"

    filled-new-array {v10, v2, v6}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v11, v12}, Lannotator/find/InClassCriterion;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return v0

    .line 185
    .end local v7    # "packageTree":Lcom/sun/source/tree/ExpressionTree;
    .end local v10    # "declaredPackage":Ljava/lang/String;
    :cond_e
    :goto_5
    if-eqz v8, :cond_12

    .line 189
    sget-object v7, Lannotator/find/InClassCriterion;->anonclassPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 190
    .local v7, "anonclassMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-nez v10, :cond_f

    .line 191
    const-string v10, "false[anonclassMatcher] InClassCriterion.isSatisfiedBy:%n  cname=%s%n  tree=%s%n"

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Lannotator/find/InClassCriterion;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    return v0

    .line 196
    :cond_f
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 197
    .local v10, "anonclassNumString":Ljava/lang/String;
    const/4 v12, 0x3

    invoke-virtual {v7, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 198
    if-nez v2, :cond_10

    .line 199
    const-string v2, ""

    .line 203
    :cond_10
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .local v11, "anonclassNum":I
    nop

    .line 208
    invoke-static {v1, v6}, Lannotator/scanner/AnonymousClassScanner;->indexOfClassTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)I

    move-result v12

    .line 210
    .local v12, "actualIndexInSource":I
    if-eq v11, v12, :cond_11

    .line 211
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v13, v14, v2, v6}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "false[anonclassNum %d %d] InClassCriterion.isSatisfiedBy:%n  cname=%s%n  tree=%s%n"

    invoke-static {v14, v13}, Lannotator/find/InClassCriterion;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    return v0

    .line 210
    .end local v7    # "anonclassMatcher":Ljava/util/regex/Matcher;
    .end local v10    # "anonclassNumString":Ljava/lang/String;
    .end local v11    # "anonclassNum":I
    .end local v12    # "actualIndexInSource":I
    :cond_11
    goto/16 :goto_6

    .line 204
    .restart local v7    # "anonclassMatcher":Ljava/util/regex/Matcher;
    .restart local v10    # "anonclassNumString":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 205
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v12, Ljava/lang/Error;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "This can\'t happen: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 214
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v7    # "anonclassMatcher":Ljava/util/regex/Matcher;
    .end local v10    # "anonclassNumString":Ljava/lang/String;
    :cond_12
    if-eqz v9, :cond_16

    .line 215
    move-object v7, v6

    check-cast v7, Lcom/sun/source/tree/ClassTree;

    .line 216
    .local v7, "c":Lcom/sun/source/tree/ClassTree;
    invoke-interface {v7}, Lcom/sun/source/tree/ClassTree;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 218
    .local v10, "treeClassName":Ljava/lang/String;
    sget-object v11, Lannotator/find/InClassCriterion;->localClassPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 219
    .local v11, "localClassMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_13

    .line 220
    const-string v12, "false[localClassMatcher] InClassCriterion.isSatisfiedBy:%n  cname=%s%n  tree=%s%n"

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v12, v13}, Lannotator/find/InClassCriterion;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    return v0

    .line 223
    :cond_13
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 224
    .local v12, "localClassNumString":Ljava/lang/String;
    const/4 v13, 0x2

    invoke-virtual {v11, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 225
    .local v13, "localClassName":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 227
    .local v14, "localClassNum":I
    invoke-static {v1, v7}, Lannotator/scanner/LocalClassScanner;->indexOfClassTree(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/ClassTree;)I

    move-result v15

    .line 229
    .local v15, "actualIndexInSource":I
    if-ne v15, v14, :cond_15

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_15

    .line 230
    const/4 v0, 0x4

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    .end local v2    # "cname":Ljava/lang/String;
    .local v0, "cname":Ljava/lang/String;
    if-nez v0, :cond_14

    .line 232
    const-string v0, ""

    move-object v2, v0

    const/4 v0, 0x0

    goto :goto_7

    .line 231
    :cond_14
    move-object v2, v0

    const/4 v0, 0x0

    goto :goto_7

    .line 235
    .end local v0    # "cname":Ljava/lang/String;
    .restart local v2    # "cname":Ljava/lang/String;
    :cond_15
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1, v2, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "false[localClassNum %d %d] InClassCriterion.isSatisfiedBy:%n  cname=%s%n  tree=%s%n"

    invoke-static {v1, v0}, Lannotator/find/InClassCriterion;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    const/4 v0, 0x0

    return v0

    .line 214
    .end local v7    # "c":Lcom/sun/source/tree/ClassTree;
    .end local v10    # "treeClassName":Ljava/lang/String;
    .end local v11    # "localClassMatcher":Ljava/util/regex/Matcher;
    .end local v12    # "localClassNumString":Ljava/lang/String;
    .end local v13    # "localClassName":Ljava/lang/String;
    .end local v14    # "localClassNum":I
    .end local v15    # "actualIndexInSource":I
    :cond_16
    :goto_6
    nop

    .line 90
    .end local v6    # "tree":Lcom/sun/source/tree/Tree;
    .end local v8    # "checkAnon":Z
    .end local v9    # "checkLocal":Z
    :goto_7
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_1

    .line 241
    .end local v5    # "i":I
    :cond_17
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s InClassCriterion.isSatisfiedBy:%n  cname=%s%n  tree=%s%n"

    invoke-static {v1, v0}, Lannotator/find/InClassCriterion;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getKind()Lannotator/find/Criterion$Kind;
    .locals 1

    .line 48
    sget-object v0, Lannotator/find/Criterion$Kind;->IN_CLASS:Lannotator/find/Criterion$Kind;

    return-object v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z
    .locals 2
    .param p1, "path"    # Lcom/sun/source/util/TreePath;

    .line 62
    iget-object v0, p0, Lannotator/find/InClassCriterion;->className:Ljava/lang/String;

    iget-boolean v1, p0, Lannotator/find/InClassCriterion;->exactMatch:Z

    invoke-static {p1, v0, v1}, Lannotator/find/InClassCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSatisfiedBy(Lcom/sun/source/util/TreePath;Lcom/sun/source/tree/Tree;)Z
    .locals 1
    .param p1, "path"    # Lcom/sun/source/util/TreePath;
    .param p2, "leaf"    # Lcom/sun/source/tree/Tree;

    .line 53
    if-nez p1, :cond_0

    .line 54
    const/4 v0, 0x0

    return v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/sun/source/util/TreePath;->getLeaf()Lcom/sun/source/tree/Tree;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 57
    invoke-virtual {p0, p1}, Lannotator/find/InClassCriterion;->isSatisfiedBy(Lcom/sun/source/util/TreePath;)Z

    move-result v0

    return v0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In class \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/InClassCriterion;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lannotator/find/InClassCriterion;->exactMatch:Z

    if-eqz v1, :cond_0

    const-string v1, " (exactly)"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
