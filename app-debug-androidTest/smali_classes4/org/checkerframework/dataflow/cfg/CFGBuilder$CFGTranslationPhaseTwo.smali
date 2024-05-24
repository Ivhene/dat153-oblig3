.class public Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseTwo;
.super Ljava/lang/Object;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CFGTranslationPhaseTwo"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1122
    const-class v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static process(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;
    .locals 23
    .param p0, "in"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;

    .line 1136
    invoke-static/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->access$000(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/Map;

    move-result-object v0

    .line 1137
    .local v0, "bindings":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;Ljava/lang/Integer;>;"
    invoke-static/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->access$100(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1138
    .local v1, "nodeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;>;"
    invoke-static/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->access$200(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/Set;

    move-result-object v2

    .line 1140
    .local v2, "leaders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->access$100(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1143
    new-instance v3, Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;

    sget-object v4, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;->EXIT:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    invoke-direct {v3, v4}, Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;-><init>(Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;)V

    .line 1144
    .local v3, "regularExitBlock":Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;
    new-instance v4, Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;

    sget-object v5, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;->EXCEPTIONAL_EXIT:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    invoke-direct {v4, v5}, Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;-><init>(Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;)V

    .line 1148
    .local v4, "exceptionalExitBlock":Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;
    new-instance v5, Lorg/checkerframework/dataflow/util/MostlySingleton;

    invoke-direct {v5}, Lorg/checkerframework/dataflow/util/MostlySingleton;-><init>()V

    move-object v15, v5

    .line 1152
    .local v15, "missingEdges":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple<+Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;Ljava/lang/Integer;*>;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v14, v5

    .line 1156
    .local v14, "missingExceptionalEdges":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple<Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;Ljava/lang/Integer;Ljavax/lang/model/type/TypeMirror;>;>;"
    new-instance v5, Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;

    sget-object v6, Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;->ENTRY:Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;

    invoke-direct {v5, v6}, Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;-><init>(Lorg/checkerframework/dataflow/cfg/block/SpecialBlock$SpecialBlockType;)V

    move-object v13, v5

    .line 1157
    .local v13, "startBlock":Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;
    new-instance v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v13, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1161
    new-instance v5, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;

    invoke-direct {v5}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;-><init>()V

    .line 1162
    .local v5, "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    const/4 v6, 0x0

    .line 1163
    .local v6, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v12, v5

    move/from16 v16, v6

    .end local v5    # "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    .end local v6    # "i":I
    .local v12, "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    .local v16, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;

    .line 1164
    .local v5, "node":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    sget-object v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$1;->$SwitchMap$org$checkerframework$dataflow$cfg$CFGBuilder$ExtendedNode$ExtendedNodeType:[I

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->getType()Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;

    move-result-object v8

    invoke-virtual {v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode$ExtendedNodeType;->ordinal()I

    move-result v8

    aget v6, v6, v8

    packed-switch v6, :pswitch_data_0

    move-object/from16 v20, v7

    goto/16 :goto_4

    .line 1246
    :pswitch_0
    move-object v6, v5

    check-cast v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;

    .line 1248
    .local v6, "en":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    new-instance v8, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;

    invoke-direct {v8}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;-><init>()V

    .line 1249
    .local v8, "e":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;->getNode()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v9

    .line 1250
    .local v9, "nn":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-virtual {v8, v9}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;->setNode(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1251
    invoke-virtual {v5, v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->setBlock(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1252
    invoke-virtual {v12, v8}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1253
    new-instance v10, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;

    invoke-direct {v10}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;-><init>()V

    .line 1258
    .end local v12    # "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    .local v10, "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->getTerminatesExecution()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1259
    new-instance v11, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;

    add-int/lit8 v12, v16, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v11, v8, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1263
    :cond_0
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;->getExceptions()Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1264
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeMirror;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v6

    .end local v6    # "en":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    .local v18, "en":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    move-object/from16 v6, v17

    check-cast v6, Ljavax/lang/model/type/TypeMirror;

    .line 1265
    .local v6, "cause":Ljavax/lang/model/type/TypeMirror;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v7

    move-object/from16 v7, v19

    check-cast v7, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 1266
    .local v7, "label":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v21, v7

    .end local v7    # "label":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .local v21, "label":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    move-object/from16 v7, v19

    check-cast v7, Ljava/lang/Integer;

    .line 1269
    .local v7, "target":Ljava/lang/Integer;
    move-object/from16 v19, v9

    .end local v9    # "nn":Lorg/checkerframework/dataflow/cfg/node/Node;
    .local v19, "nn":Lorg/checkerframework/dataflow/cfg/node/Node;
    new-instance v9, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;

    invoke-direct {v9, v8, v7, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v14, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1270
    .end local v7    # "target":Ljava/lang/Integer;
    .end local v21    # "label":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    move-object/from16 v9, v19

    move-object/from16 v7, v20

    goto :goto_2

    .line 1265
    .end local v19    # "nn":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v9    # "nn":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_1
    move-object/from16 v20, v7

    move-object/from16 v19, v9

    .line 1271
    .end local v6    # "cause":Ljavax/lang/model/type/TypeMirror;
    .end local v9    # "nn":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavax/lang/model/type/TypeMirror;Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;>;>;"
    .restart local v19    # "nn":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object/from16 v6, v18

    goto :goto_1

    .line 1263
    .end local v18    # "en":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    .end local v19    # "nn":Lorg/checkerframework/dataflow/cfg/node/Node;
    .local v6, "en":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    .restart local v9    # "nn":Lorg/checkerframework/dataflow/cfg/node/Node;
    :cond_2
    move-object/from16 v18, v6

    move-object/from16 v20, v7

    move-object/from16 v19, v9

    .end local v6    # "en":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    .end local v9    # "nn":Lorg/checkerframework/dataflow/cfg/node/Node;
    .restart local v18    # "en":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    .restart local v19    # "nn":Lorg/checkerframework/dataflow/cfg/node/Node;
    move-object v12, v10

    goto/16 :goto_4

    .line 1228
    .end local v8    # "e":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;
    .end local v10    # "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    .end local v18    # "en":Lorg/checkerframework/dataflow/cfg/CFGBuilder$NodeWithExceptionsHolder;
    .end local v19    # "nn":Lorg/checkerframework/dataflow/cfg/node/Node;
    .local v12, "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    :pswitch_1
    move-object/from16 v20, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1229
    new-instance v6, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;

    invoke-direct {v6}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;-><init>()V

    .line 1230
    .local v6, "b":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    invoke-virtual {v12, v6}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1231
    move-object v12, v6

    .line 1233
    .end local v6    # "b":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    :cond_3
    invoke-virtual {v5, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->setBlock(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1234
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->getLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->access$300(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v7

    if-ne v6, v7, :cond_4

    .line 1235
    invoke-virtual {v12, v3}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    goto :goto_3

    .line 1236
    :cond_4
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->getLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v6

    invoke-static/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->access$400(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v7

    if-ne v6, v7, :cond_5

    .line 1237
    invoke-virtual {v12, v4}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    goto :goto_3

    .line 1239
    :cond_5
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->getLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1240
    .local v6, "target":Ljava/lang/Integer;
    if-eqz v6, :cond_6

    .line 1241
    new-instance v7, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;

    invoke-direct {v7, v12, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1243
    .end local v6    # "target":Ljava/lang/Integer;
    :goto_3
    new-instance v6, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;

    invoke-direct {v6}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;-><init>()V

    .line 1244
    .end local v12    # "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    .local v6, "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    move-object v12, v6

    goto/16 :goto_4

    .line 1240
    .local v6, "target":Ljava/lang/Integer;
    .restart local v12    # "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    :cond_6
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 1184
    .end local v6    # "target":Ljava/lang/Integer;
    :pswitch_2
    move-object/from16 v20, v7

    move-object v6, v5

    check-cast v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;

    .line 1188
    .local v6, "cj":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    invoke-virtual {v5, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->setBlock(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1189
    if-eqz v12, :cond_b

    .line 1190
    new-instance v7, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;

    invoke-direct {v7}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;-><init>()V

    .line 1191
    .local v7, "cb":Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->getTrueFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 1192
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->getTrueFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->setThenFlowRule(Lorg/checkerframework/dataflow/analysis/Store$FlowRule;)V

    .line 1194
    :cond_7
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->getFalseFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 1195
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->getFalseFlowRule()Lorg/checkerframework/dataflow/analysis/Store$FlowRule;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;->setElseFlowRule(Lorg/checkerframework/dataflow/analysis/Store$FlowRule;)V

    .line 1197
    :cond_8
    invoke-virtual {v12, v7}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1198
    new-instance v8, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;

    invoke-direct {v8}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;-><init>()V

    .line 1201
    .end local v12    # "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    .local v8, "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->getThenLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v9

    .line 1202
    .local v9, "thenLabel":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    invoke-virtual {v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;->getElseLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    move-result-object v10

    .line 1203
    .local v10, "elseLabel":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 1204
    .local v11, "target":Ljava/lang/Integer;
    if-eqz v11, :cond_a

    .line 1205
    new-instance v12, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;

    move-object/from16 v17, v6

    .end local v6    # "cj":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    .local v17, "cj":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    new-instance v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseTwo$1;

    move-object/from16 v18, v8

    .end local v8    # "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    .local v18, "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    sget-object v8, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->REGULAR_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-direct {v6, v8, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseTwo$1;-><init>(Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;)V

    invoke-direct {v12, v6, v11}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1214
    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1215
    .end local v11    # "target":Ljava/lang/Integer;
    .local v6, "target":Ljava/lang/Integer;
    if-eqz v6, :cond_9

    .line 1216
    new-instance v8, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;

    new-instance v11, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseTwo$2;

    sget-object v12, Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;->REGULAR_BLOCK:Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;

    invoke-direct {v11, v12, v7}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$CFGTranslationPhaseTwo$2;-><init>(Lorg/checkerframework/dataflow/cfg/block/Block$BlockType;Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;)V

    invoke-direct {v8, v11, v6}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v15, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1225
    move-object/from16 v12, v18

    goto :goto_4

    .line 1215
    :cond_9
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1204
    .end local v17    # "cj":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    .end local v18    # "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    .local v6, "cj":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    .restart local v8    # "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    .restart local v11    # "target":Ljava/lang/Integer;
    :cond_a
    move-object/from16 v17, v6

    .end local v6    # "cj":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    .restart local v17    # "cj":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1189
    .end local v7    # "cb":Lorg/checkerframework/dataflow/cfg/block/ConditionalBlockImpl;
    .end local v8    # "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    .end local v9    # "thenLabel":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .end local v10    # "elseLabel":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .end local v11    # "target":Ljava/lang/Integer;
    .end local v17    # "cj":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    .restart local v6    # "cj":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    .restart local v12    # "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    :cond_b
    move-object/from16 v17, v6

    .end local v6    # "cj":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    .restart local v17    # "cj":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1166
    .end local v17    # "cj":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ConditionalJump;
    :pswitch_3
    move-object/from16 v20, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1167
    new-instance v6, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;

    invoke-direct {v6}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;-><init>()V

    .line 1168
    .local v6, "b":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    invoke-virtual {v12, v6}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1169
    move-object v12, v6

    .line 1171
    .end local v6    # "b":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    :cond_c
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->getNode()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v6

    invoke-virtual {v12, v6}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->addNode(Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1172
    invoke-virtual {v5, v12}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->setBlock(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1176
    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->getTerminatesExecution()Z

    move-result v6

    .line 1177
    .local v6, "terminatesExecution":Z
    if-eqz v6, :cond_d

    .line 1178
    invoke-virtual {v12, v4}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;->setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1179
    new-instance v7, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;

    invoke-direct {v7}, Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;-><init>()V

    move-object v12, v7

    .line 1274
    .end local v6    # "terminatesExecution":Z
    :cond_d
    :goto_4
    nop

    .end local v5    # "node":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    add-int/lit8 v16, v16, 0x1

    .line 1275
    move-object/from16 v7, v20

    goto/16 :goto_0

    .line 1278
    :cond_e
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;

    .line 1279
    .local v6, "p":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;, "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple<+Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;Ljava/lang/Integer;*>;"
    iget-object v7, v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    .line 1280
    .local v7, "index":Ljava/lang/Integer;
    if-eqz v7, :cond_f

    .line 1281
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;

    .line 1282
    .local v8, "extendedNode":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    invoke-virtual {v8}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->getBlock()Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    move-result-object v9

    .line 1283
    .local v9, "target":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    iget-object v10, v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;->a:Ljava/lang/Object;

    check-cast v10, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;

    .line 1284
    .local v10, "source":Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;
    invoke-virtual {v10, v9}, Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;->setSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;)V

    .line 1285
    .end local v6    # "p":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;, "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple<+Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;Ljava/lang/Integer;*>;"
    .end local v7    # "index":Ljava/lang/Integer;
    .end local v8    # "extendedNode":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    .end local v9    # "target":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    .end local v10    # "source":Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;
    goto :goto_5

    .line 1280
    .restart local v6    # "p":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;, "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple<+Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;Ljava/lang/Integer;*>;"
    .restart local v7    # "index":Ljava/lang/Integer;
    :cond_f
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CFGBuilder: problem in CFG construction "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;->a:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 1288
    .end local v6    # "p":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;, "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple<+Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;Ljava/lang/Integer;*>;"
    .end local v7    # "index":Ljava/lang/Integer;
    :cond_10
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;

    .line 1289
    .local v6, "p":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;, "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple<Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;Ljava/lang/Integer;*>;"
    iget-object v7, v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    .line 1290
    .restart local v7    # "index":Ljava/lang/Integer;
    iget-object v8, v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;->c:Ljava/lang/Object;

    check-cast v8, Ljavax/lang/model/type/TypeMirror;

    .line 1291
    .local v8, "cause":Ljavax/lang/model/type/TypeMirror;
    iget-object v9, v6, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;->a:Ljava/lang/Object;

    check-cast v9, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;

    .line 1292
    .local v9, "source":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;
    if-nez v7, :cond_11

    .line 1294
    invoke-virtual {v9, v4, v8}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;->addExceptionalSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Ljavax/lang/model/type/TypeMirror;)V

    goto :goto_7

    .line 1297
    :cond_11
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;

    .line 1298
    .local v10, "extendedNode":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    invoke-virtual {v10}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;->getBlock()Lorg/checkerframework/dataflow/cfg/block/BlockImpl;

    move-result-object v11

    .line 1299
    .local v11, "target":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    invoke-virtual {v9, v11, v8}, Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;->addExceptionalSuccessor(Lorg/checkerframework/dataflow/cfg/block/BlockImpl;Ljavax/lang/model/type/TypeMirror;)V

    .line 1301
    .end local v6    # "p":Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple;, "Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple<Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;Ljava/lang/Integer;*>;"
    .end local v7    # "index":Ljava/lang/Integer;
    .end local v8    # "cause":Ljavax/lang/model/type/TypeMirror;
    .end local v9    # "source":Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;
    .end local v10    # "extendedNode":Lorg/checkerframework/dataflow/cfg/CFGBuilder$ExtendedNode;
    .end local v11    # "target":Lorg/checkerframework/dataflow/cfg/block/BlockImpl;
    :goto_7
    goto :goto_6

    .line 1303
    :cond_12
    new-instance v17, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;

    .line 1307
    invoke-static/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->access$500(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Lorg/checkerframework/dataflow/cfg/UnderlyingAST;

    move-result-object v9

    .line 1308
    invoke-static/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->access$600(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/IdentityHashMap;

    move-result-object v10

    .line 1309
    invoke-static/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->access$700(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/IdentityHashMap;

    move-result-object v11

    .line 1310
    invoke-static/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->access$800(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/IdentityHashMap;

    move-result-object v18

    .line 1311
    invoke-static/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->access$900(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/List;

    move-result-object v19

    .line 1312
    invoke-static/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->access$1000(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/List;

    move-result-object v20

    .line 1313
    invoke-static/range {p0 .. p0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;->access$1100(Lorg/checkerframework/dataflow/cfg/CFGBuilder$PhaseOneResult;)Ljava/util/List;

    move-result-object v21

    move-object/from16 v5, v17

    move-object v6, v13

    move-object v7, v3

    move-object v8, v4

    move-object/from16 v22, v12

    .end local v12    # "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    .local v22, "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    move-object/from16 v12, v18

    move-object/from16 v18, v13

    .end local v13    # "startBlock":Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;
    .local v18, "startBlock":Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;
    move-object/from16 v13, v19

    move-object/from16 v19, v14

    .end local v14    # "missingExceptionalEdges":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple<Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;Ljava/lang/Integer;Ljavax/lang/model/type/TypeMirror;>;>;"
    .local v19, "missingExceptionalEdges":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple<Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;Ljava/lang/Integer;Ljavax/lang/model/type/TypeMirror;>;>;"
    move-object/from16 v14, v20

    move-object/from16 v20, v15

    .end local v15    # "missingEdges":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple<+Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;Ljava/lang/Integer;*>;>;"
    .local v20, "missingEdges":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple<+Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;Ljava/lang/Integer;*>;>;"
    move-object/from16 v15, v21

    invoke-direct/range {v5 .. v15}, Lorg/checkerframework/dataflow/cfg/ControlFlowGraph;-><init>(Lorg/checkerframework/dataflow/cfg/block/SpecialBlock;Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;Lorg/checkerframework/dataflow/cfg/UnderlyingAST;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1303
    return-object v17

    .line 1140
    .end local v3    # "regularExitBlock":Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;
    .end local v4    # "exceptionalExitBlock":Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;
    .end local v16    # "i":I
    .end local v18    # "startBlock":Lorg/checkerframework/dataflow/cfg/block/SpecialBlockImpl;
    .end local v19    # "missingExceptionalEdges":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple<Lorg/checkerframework/dataflow/cfg/block/ExceptionBlockImpl;Ljava/lang/Integer;Ljavax/lang/model/type/TypeMirror;>;>;"
    .end local v20    # "missingEdges":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/dataflow/cfg/CFGBuilder$Tuple<+Lorg/checkerframework/dataflow/cfg/block/SingleSuccessorBlockImpl;Ljava/lang/Integer;*>;>;"
    .end local v22    # "block":Lorg/checkerframework/dataflow/cfg/block/RegularBlockImpl;
    :cond_13
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
