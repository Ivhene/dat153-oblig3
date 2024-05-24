.class public Lorg/checkerframework/common/value/ValueTransfer;
.super Lorg/checkerframework/framework/flow/CFTransfer;
.source "ValueTransfer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;,
        Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;,
        Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;,
        Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;
    }
.end annotation


# static fields
.field private static final ALL_BOOLEANS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

.field protected final hierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1497
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    .line 1498
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/common/value/ValueTransfer;->ALL_BOOLEANS:Ljava/util/List;

    .line 1497
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Lorg/checkerframework/framework/flow/CFTransfer;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "analysis":Lorg/checkerframework/framework/flow/CFAbstractAnalysis;, "Lorg/checkerframework/framework/flow/CFAbstractAnalysis<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFTransfer;>;"
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/flow/CFTransfer;-><init>(Lorg/checkerframework/framework/flow/CFAbstractAnalysis;)V

    .line 80
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iput-object v0, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 81
    invoke-virtual {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getQualifierHierarchy()Lorg/checkerframework/framework/type/QualifierHierarchy;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/value/ValueTransfer;->hierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 82
    return-void
.end method

.method private addAnnotationToStore(Lorg/checkerframework/framework/flow/CFStore;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 7
    .param p1, "store"    # Lorg/checkerframework/framework/flow/CFStore;
    .param p2, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1322
    invoke-virtual {p0, p3}, Lorg/checkerframework/common/value/ValueTransfer;->splitAssignments(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1323
    .local v1, "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v2}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v2

    .line 1325
    .local v2, "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-static {v2}, Lorg/checkerframework/framework/flow/CFAbstractStore;->canInsertReceiver(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1326
    invoke-virtual {p1, v2}, Lorg/checkerframework/framework/flow/CFStore;->getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFValue;

    .local v3, "currentValueFromStore":Lorg/checkerframework/framework/flow/CFValue;
    goto :goto_1

    .line 1329
    .end local v3    # "currentValueFromStore":Lorg/checkerframework/framework/flow/CFValue;
    :cond_0
    const/4 v3, 0x0

    .line 1332
    .restart local v3    # "currentValueFromStore":Lorg/checkerframework/framework/flow/CFValue;
    :goto_1
    if-nez v3, :cond_1

    .line 1333
    iget-object v4, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    goto :goto_2

    .line 1334
    :cond_1
    invoke-direct {p0, v3}, Lorg/checkerframework/common/value/ValueTransfer;->getValueAnnotation(Lorg/checkerframework/framework/flow/CFValue;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    :goto_2
    nop

    .line 1337
    .local v4, "currentAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v5, p0, Lorg/checkerframework/common/value/ValueTransfer;->hierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v5, p2, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 1338
    .local v5, "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p1, v2, v5}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1340
    instance-of v6, p3, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    if-eqz v6, :cond_2

    .line 1341
    move-object v6, v1

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;

    invoke-direct {p0, v6, p1}, Lorg/checkerframework/common/value/ValueTransfer;->refineArrayAtLengthAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/framework/flow/CFStore;)V

    goto :goto_3

    .line 1342
    :cond_2
    instance-of v6, p3, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    if-eqz v6, :cond_3

    .line 1343
    move-object v6, v1

    check-cast v6, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;

    invoke-direct {p0, v6, p1}, Lorg/checkerframework/common/value/ValueTransfer;->refineStringAtLengthInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 1345
    .end local v1    # "internal":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v2    # "rec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v3    # "currentValueFromStore":Lorg/checkerframework/framework/flow/CFValue;
    .end local v4    # "currentAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "newAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_3
    :goto_3
    goto :goto_0

    .line 1346
    :cond_4
    return-void
.end method

.method private calculateBinaryComparison(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;)Ljava/util/List;
    .locals 22
    .param p1, "leftNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "leftValue"    # Lorg/checkerframework/framework/flow/CFValue;
    .param p3, "rightNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "rightValue"    # Lorg/checkerframework/framework/flow/CFValue;
    .param p5, "op"    # Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;
    .param p6, "thenStore"    # Lorg/checkerframework/framework/flow/CFStore;
    .param p7, "elseStore"    # Lorg/checkerframework/framework/flow/CFStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1146
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p2

    invoke-direct {v8, v13}, Lorg/checkerframework/common/value/ValueTransfer;->getValueAnnotation(Lorg/checkerframework/framework/flow/CFValue;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v14

    .line 1147
    .local v14, "leftAnno":Ljavax/lang/model/element/AnnotationMirror;
    move-object/from16 v15, p4

    invoke-direct {v8, v15}, Lorg/checkerframework/common/value/ValueTransfer;->getValueAnnotation(Lorg/checkerframework/framework/flow/CFValue;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v7

    .line 1149
    .local v7, "rightAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v0, v8, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v0, v14}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->isIntRange(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v8, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 1150
    invoke-virtual {v0, v7}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->isIntRange(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1151
    invoke-direct {v8, v10, v7}, Lorg/checkerframework/common/value/ValueTransfer;->isIntegralUnknownVal(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1152
    invoke-direct {v8, v9, v14}, Lorg/checkerframework/common/value/ValueTransfer;->isIntegralUnknownVal(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v2, p5

    goto/16 :goto_6

    .line 1162
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1164
    .local v0, "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-direct {v8, v9, v14}, Lorg/checkerframework/common/value/ValueTransfer;->getNumericalValues(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    .line 1165
    .local v1, "lefts":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    invoke-direct {v8, v10, v7}, Lorg/checkerframework/common/value/ValueTransfer;->getNumericalValues(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v2

    .line 1167
    .local v2, "rights":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    move-object/from16 v18, v1

    move-object/from16 v20, v2

    move-object/from16 v2, p5

    goto/16 :goto_4

    .line 1178
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1179
    .local v3, "thenLeftVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    .local v4, "elseLeftVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    .local v5, "thenRightVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1183
    .local v6, "elseRightVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v1

    .end local v1    # "lefts":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .local v18, "lefts":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    move-object/from16 v1, v17

    check-cast v1, Ljava/lang/Number;

    .line 1184
    .local v1, "left":Ljava/lang/Number;
    invoke-static {v1}, Lorg/checkerframework/common/value/util/NumberMath;->getNumberMath(Ljava/lang/Number;)Lorg/checkerframework/common/value/util/NumberMath;

    move-result-object v13

    .line 1185
    .local v13, "nmLeft":Lorg/checkerframework/common/value/util/NumberMath;, "Lorg/checkerframework/common/value/util/NumberMath<*>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v2

    .end local v2    # "rights":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .local v20, "rights":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    move-object/from16 v2, v19

    check-cast v2, Ljava/lang/Number;

    .line 1187
    .local v2, "right":Ljava/lang/Number;
    sget-object v19, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$ComparisonOperators:[I

    invoke-virtual/range {p5 .. p5}, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->ordinal()I

    move-result v21

    aget v19, v19, v21

    packed-switch v19, :pswitch_data_0

    .line 1207
    move-object/from16 v21, v13

    .end local v13    # "nmLeft":Lorg/checkerframework/common/value/util/NumberMath;, "Lorg/checkerframework/common/value/util/NumberMath<*>;"
    .local v21, "nmLeft":Lorg/checkerframework/common/value/util/NumberMath;, "Lorg/checkerframework/common/value/util/NumberMath<*>;"
    new-instance v13, Lorg/checkerframework/javacutil/BugInCF;

    move-object/from16 v17, v1

    .end local v1    # "left":Ljava/lang/Number;
    .local v17, "left":Ljava/lang/Number;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v2

    .end local v2    # "right":Ljava/lang/Number;
    .local v19, "right":Ljava/lang/Number;
    const-string v2, "ValueTransfer: unsupported operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1204
    .end local v17    # "left":Ljava/lang/Number;
    .end local v19    # "right":Ljava/lang/Number;
    .end local v21    # "nmLeft":Lorg/checkerframework/common/value/util/NumberMath;, "Lorg/checkerframework/common/value/util/NumberMath<*>;"
    .restart local v1    # "left":Ljava/lang/Number;
    .restart local v2    # "right":Ljava/lang/Number;
    .restart local v13    # "nmLeft":Lorg/checkerframework/common/value/util/NumberMath;, "Lorg/checkerframework/common/value/util/NumberMath<*>;"
    :pswitch_0
    invoke-virtual {v13, v2}, Lorg/checkerframework/common/value/util/NumberMath;->notEqualTo(Ljava/lang/Number;)Ljava/lang/Boolean;

    move-result-object v19

    .line 1205
    .local v19, "result":Ljava/lang/Boolean;
    move-object/from16 v21, v13

    move-object/from16 v13, v19

    goto :goto_2

    .line 1201
    .end local v19    # "result":Ljava/lang/Boolean;
    :pswitch_1
    invoke-virtual {v13, v2}, Lorg/checkerframework/common/value/util/NumberMath;->lessThanEq(Ljava/lang/Number;)Ljava/lang/Boolean;

    move-result-object v19

    .line 1202
    .restart local v19    # "result":Ljava/lang/Boolean;
    move-object/from16 v21, v13

    move-object/from16 v13, v19

    goto :goto_2

    .line 1198
    .end local v19    # "result":Ljava/lang/Boolean;
    :pswitch_2
    invoke-virtual {v13, v2}, Lorg/checkerframework/common/value/util/NumberMath;->lessThan(Ljava/lang/Number;)Ljava/lang/Boolean;

    move-result-object v19

    .line 1199
    .restart local v19    # "result":Ljava/lang/Boolean;
    move-object/from16 v21, v13

    move-object/from16 v13, v19

    goto :goto_2

    .line 1195
    .end local v19    # "result":Ljava/lang/Boolean;
    :pswitch_3
    invoke-virtual {v13, v2}, Lorg/checkerframework/common/value/util/NumberMath;->greaterThanEq(Ljava/lang/Number;)Ljava/lang/Boolean;

    move-result-object v19

    .line 1196
    .restart local v19    # "result":Ljava/lang/Boolean;
    move-object/from16 v21, v13

    move-object/from16 v13, v19

    goto :goto_2

    .line 1192
    .end local v19    # "result":Ljava/lang/Boolean;
    :pswitch_4
    invoke-virtual {v13, v2}, Lorg/checkerframework/common/value/util/NumberMath;->greaterThan(Ljava/lang/Number;)Ljava/lang/Boolean;

    move-result-object v19

    .line 1193
    .restart local v19    # "result":Ljava/lang/Boolean;
    move-object/from16 v21, v13

    move-object/from16 v13, v19

    goto :goto_2

    .line 1189
    .end local v19    # "result":Ljava/lang/Boolean;
    :pswitch_5
    invoke-virtual {v13, v2}, Lorg/checkerframework/common/value/util/NumberMath;->equalTo(Ljava/lang/Number;)Ljava/lang/Boolean;

    move-result-object v19

    .line 1190
    .restart local v19    # "result":Ljava/lang/Boolean;
    move-object/from16 v21, v13

    move-object/from16 v13, v19

    .line 1209
    .end local v19    # "result":Ljava/lang/Boolean;
    .local v13, "result":Ljava/lang/Boolean;
    .restart local v21    # "nmLeft":Lorg/checkerframework/common/value/util/NumberMath;, "Lorg/checkerframework/common/value/util/NumberMath<*>;"
    :goto_2
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1210
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1211
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1212
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1214
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1215
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1217
    .end local v2    # "right":Ljava/lang/Number;
    .end local v13    # "result":Ljava/lang/Boolean;
    :goto_3
    move-object/from16 v2, v20

    move-object/from16 v13, v21

    goto/16 :goto_1

    .line 1185
    .end local v20    # "rights":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .end local v21    # "nmLeft":Lorg/checkerframework/common/value/util/NumberMath;, "Lorg/checkerframework/common/value/util/NumberMath<*>;"
    .local v2, "rights":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .local v13, "nmLeft":Lorg/checkerframework/common/value/util/NumberMath;, "Lorg/checkerframework/common/value/util/NumberMath<*>;"
    :cond_3
    move-object/from16 v17, v1

    move-object/from16 v20, v2

    move-object/from16 v21, v13

    move-object/from16 v2, p5

    .line 1218
    .end local v1    # "left":Ljava/lang/Number;
    .end local v2    # "rights":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .end local v13    # "nmLeft":Lorg/checkerframework/common/value/util/NumberMath;, "Lorg/checkerframework/common/value/util/NumberMath<*>;"
    .restart local v20    # "rights":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    move-object/from16 v13, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 1220
    .end local v18    # "lefts":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .end local v20    # "rights":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .local v1, "lefts":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .restart local v2    # "rights":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    :cond_4
    invoke-direct {v8, v11, v3, v9}, Lorg/checkerframework/common/value/ValueTransfer;->createAnnotationFromResultsAndAddToStore(Lorg/checkerframework/framework/flow/CFStore;Ljava/util/List;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1221
    invoke-direct {v8, v12, v4, v9}, Lorg/checkerframework/common/value/ValueTransfer;->createAnnotationFromResultsAndAddToStore(Lorg/checkerframework/framework/flow/CFStore;Ljava/util/List;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1222
    invoke-direct {v8, v11, v5, v10}, Lorg/checkerframework/common/value/ValueTransfer;->createAnnotationFromResultsAndAddToStore(Lorg/checkerframework/framework/flow/CFStore;Ljava/util/List;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1223
    invoke-direct {v8, v12, v6, v10}, Lorg/checkerframework/common/value/ValueTransfer;->createAnnotationFromResultsAndAddToStore(Lorg/checkerframework/framework/flow/CFStore;Ljava/util/List;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1225
    return-object v0

    .line 1167
    .end local v3    # "thenLeftVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    .end local v4    # "elseLeftVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    .end local v5    # "thenRightVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    .end local v6    # "elseRightVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    :cond_5
    move-object/from16 v18, v1

    move-object/from16 v20, v2

    move-object/from16 v2, p5

    .line 1169
    .end local v1    # "lefts":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .end local v2    # "rights":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .restart local v18    # "lefts":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .restart local v20    # "rights":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    :goto_4
    iget-object v1, v8, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v14, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v8, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v1, v1, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->BOTTOMVAL:Ljavax/lang/model/element/AnnotationMirror;

    .line 1170
    invoke-static {v7, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSame(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_5

    .line 1173
    :cond_6
    const/4 v1, 0x0

    return-object v1

    .line 1171
    :cond_7
    :goto_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 1151
    .end local v0    # "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    .end local v18    # "lefts":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    .end local v20    # "rights":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    :cond_8
    move-object/from16 v2, p5

    goto :goto_6

    .line 1150
    :cond_9
    move-object/from16 v2, p5

    goto :goto_6

    .line 1149
    :cond_a
    move-object/from16 v2, p5

    .line 1158
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move-object/from16 v3, p3

    move-object v4, v7

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v13, v7

    .end local v7    # "rightAnno":Ljavax/lang/model/element/AnnotationMirror;
    .local v13, "rightAnno":Ljavax/lang/model/element/AnnotationMirror;
    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/common/value/ValueTransfer;->refineIntRanges(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateConditionalOperator(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;
    .locals 10
    .param p1, "leftNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "rightNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "op"    # Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1505
    .local p4, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p4}, Lorg/checkerframework/common/value/ValueTransfer;->getBooleanValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v0

    .line 1506
    .local v0, "lefts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-nez v0, :cond_0

    .line 1507
    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer;->ALL_BOOLEANS:Ljava/util/List;

    .line 1509
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1510
    .local v1, "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    const/4 v2, 0x0

    .line 1511
    .local v2, "rights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz p2, :cond_1

    .line 1512
    invoke-direct {p0, p2, p4}, Lorg/checkerframework/common/value/ValueTransfer;->getBooleanValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v2

    .line 1513
    if-nez v2, :cond_1

    .line 1514
    sget-object v2, Lorg/checkerframework/common/value/ValueTransfer;->ALL_BOOLEANS:Ljava/util/List;

    .line 1517
    :cond_1
    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$ConditionalOperators:[I

    invoke-virtual {p3}, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v3, :pswitch_data_0

    .line 1538
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ValueTransfer: unsupported operation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1531
    :pswitch_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 1532
    .local v6, "left":Ljava/lang/Boolean;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 1533
    .local v8, "right":Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    move v9, v5

    goto :goto_2

    :cond_2
    move v9, v4

    :goto_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1534
    .end local v8    # "right":Ljava/lang/Boolean;
    goto :goto_1

    .line 1535
    .end local v6    # "left":Ljava/lang/Boolean;
    :cond_3
    goto :goto_0

    .line 1536
    :cond_4
    return-object v1

    .line 1524
    :pswitch_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 1525
    .restart local v6    # "left":Ljava/lang/Boolean;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 1526
    .restart local v8    # "right":Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_5

    :cond_5
    move v9, v4

    goto :goto_6

    :cond_6
    :goto_5
    move v9, v5

    :goto_6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1527
    .end local v8    # "right":Ljava/lang/Boolean;
    goto :goto_4

    .line 1528
    .end local v6    # "left":Ljava/lang/Boolean;
    :cond_7
    goto :goto_3

    .line 1529
    :cond_8
    return-object v1

    .line 1519
    :pswitch_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 1520
    .local v4, "left":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    xor-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1521
    .end local v4    # "left":Ljava/lang/Boolean;
    goto :goto_7

    .line 1522
    :cond_9
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateLengthAddition(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 565
    .local p1, "leftLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "rightLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 567
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 568
    .local v2, "left":I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 569
    .local v4, "right":I
    int-to-long v5, v2

    int-to-long v7, v4

    add-long/2addr v5, v7

    .line 571
    .local v5, "resultLength":J
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v5, v7

    if-gtz v7, :cond_0

    .line 572
    long-to-int v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    .end local v4    # "right":I
    .end local v5    # "resultLength":J
    :cond_0
    goto :goto_1

    .line 575
    .end local v2    # "left":I
    :cond_1
    goto :goto_0

    .line 577
    :cond_2
    return-object v0
.end method

.method private calculateLengthRangeAddition(Lorg/checkerframework/common/value/util/Range;Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;
    .locals 2
    .param p1, "leftLengths"    # Lorg/checkerframework/common/value/util/Range;
    .param p2, "rightLengths"    # Lorg/checkerframework/common/value/util/Range;

    .line 585
    invoke-virtual {p1, p2}, Lorg/checkerframework/common/value/util/Range;->plus(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/common/value/util/Range;->INT_EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->intersect(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    return-object v0
.end method

.method private calculateNumericalBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "leftNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "rightNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "op"    # Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 749
    .local p4, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p4}, Lorg/checkerframework/common/value/ValueTransfer;->isIntRangeOrIntegralUnknownVal(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    invoke-direct {p0, p2, p4}, Lorg/checkerframework/common/value/ValueTransfer;->isIntRangeOrIntegralUnknownVal(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/common/value/ValueTransfer;->calculateValuesBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v0

    .line 752
    .local v0, "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createNumberAnnotationMirror(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 754
    .end local v0    # "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/common/value/ValueTransfer;->calculateRangeBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 755
    .local v0, "resultRange":Lorg/checkerframework/common/value/util/Range;
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private calculateNumericalUnaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "operand"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "op"    # Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 1037
    .local p3, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/common/value/ValueTransfer;->isIntRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/common/value/ValueTransfer;->calculateValuesUnaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v0

    .line 1039
    .local v0, "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createNumberAnnotationMirror(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1

    .line 1041
    .end local v0    # "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/common/value/ValueTransfer;->calculateRangeUnaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 1042
    .local v0, "resultRange":Lorg/checkerframework/common/value/util/Range;
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private calculateRangeBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;
    .locals 5
    .param p1, "leftNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "rightNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "op"    # Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/common/value/util/Range;"
        }
    .end annotation

    .line 765
    .local p4, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isIntegral(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 766
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isIntegral(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    invoke-direct {p0, p1, p4}, Lorg/checkerframework/common/value/ValueTransfer;->getIntRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 768
    .local v0, "leftRange":Lorg/checkerframework/common/value/util/Range;
    invoke-direct {p0, p2, p4}, Lorg/checkerframework/common/value/ValueTransfer;->getIntRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 770
    .local v1, "rightRange":Lorg/checkerframework/common/value/util/Range;
    sget-object v2, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalBinaryOps:[I

    invoke-virtual {p3}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 805
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ValueTransfer: unsupported operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 802
    :pswitch_0
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->bitwiseXor(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 803
    .local v2, "resultRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 799
    .end local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_1
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->bitwiseOr(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 800
    .restart local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 796
    .end local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_2
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->bitwiseAnd(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 797
    .restart local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 793
    .end local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_3
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->unsignedShiftRight(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 794
    .restart local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 790
    .end local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_4
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->signedShiftRight(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 791
    .restart local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 787
    .end local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_5
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->shiftLeft(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 788
    .restart local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 784
    .end local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_6
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->remainder(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 785
    .restart local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 781
    .end local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_7
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->divide(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 782
    .restart local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 778
    .end local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_8
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->times(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 779
    .restart local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 775
    .end local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_9
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->minus(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 776
    .restart local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 772
    .end local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_a
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->plus(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 773
    .restart local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    nop

    .line 810
    :goto_0
    nop

    .line 809
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    if-eq v3, v4, :cond_1

    .line 810
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    sget-object v4, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 812
    :cond_0
    invoke-virtual {v2}, Lorg/checkerframework/common/value/util/Range;->intRange()Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    goto :goto_2

    .line 811
    :cond_1
    :goto_1
    move-object v3, v2

    .line 809
    :goto_2
    return-object v3

    .line 814
    .end local v0    # "leftRange":Lorg/checkerframework/common/value/util/Range;
    .end local v1    # "rightRange":Lorg/checkerframework/common/value/util/Range;
    .end local v2    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    :cond_2
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateRangeUnaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;
    .locals 4
    .param p1, "operand"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "op"    # Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/common/value/util/Range;"
        }
    .end annotation

    .line 1049
    .local p3, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isIntegral(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1050
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/common/value/ValueTransfer;->getIntRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 1052
    .local v0, "range":Lorg/checkerframework/common/value/util/Range;
    sget-object v1, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalUnaryOps:[I

    invoke-virtual {p2}, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1063
    new-instance v1, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ValueTransfer: unsupported operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1060
    :pswitch_0
    invoke-virtual {v0}, Lorg/checkerframework/common/value/util/Range;->bitwiseComplement()Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 1061
    .local v1, "resultRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 1057
    .end local v1    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_1
    invoke-virtual {v0}, Lorg/checkerframework/common/value/util/Range;->unaryMinus()Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 1058
    .restart local v1    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 1054
    .end local v1    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_2
    invoke-virtual {v0}, Lorg/checkerframework/common/value/util/Range;->unaryPlus()Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 1055
    .restart local v1    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    nop

    .line 1067
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v2

    sget-object v3, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    if-ne v2, v3, :cond_0

    .line 1068
    move-object v2, v1

    goto :goto_1

    .line 1069
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/common/value/util/Range;->intRange()Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 1067
    :goto_1
    return-object v2

    .line 1071
    .end local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    .end local v1    # "resultRange":Lorg/checkerframework/common/value/util/Range;
    :cond_1
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateValuesBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;
    .locals 10
    .param p1, "leftNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "rightNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "op"    # Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 824
    .local p4, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p4}, Lorg/checkerframework/common/value/ValueTransfer;->getNumericalValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v0

    .line 825
    .local v0, "lefts":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    invoke-direct {p0, p2, p4}, Lorg/checkerframework/common/value/ValueTransfer;->getNumericalValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v1

    .line 826
    .local v1, "rights":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 829
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 830
    .local v2, "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    .line 831
    .local v4, "left":Ljava/lang/Number;
    invoke-static {v4}, Lorg/checkerframework/common/value/util/NumberMath;->getNumberMath(Ljava/lang/Number;)Lorg/checkerframework/common/value/util/NumberMath;

    move-result-object v5

    .line 832
    .local v5, "nmLeft":Lorg/checkerframework/common/value/util/NumberMath;, "Lorg/checkerframework/common/value/util/NumberMath<*>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    .line 833
    .local v7, "right":Ljava/lang/Number;
    sget-object v8, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalBinaryOps:[I

    invoke-virtual {p3}, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 874
    new-instance v3, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ValueTransfer: unsupported operation: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v3

    .line 871
    :pswitch_0
    invoke-virtual {v5, v7}, Lorg/checkerframework/common/value/util/NumberMath;->bitwiseXor(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    goto :goto_2

    .line 868
    :pswitch_1
    invoke-virtual {v5, v7}, Lorg/checkerframework/common/value/util/NumberMath;->bitwiseOr(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    goto :goto_2

    .line 865
    :pswitch_2
    invoke-virtual {v5, v7}, Lorg/checkerframework/common/value/util/NumberMath;->bitwiseAnd(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    goto :goto_2

    .line 862
    :pswitch_3
    invoke-virtual {v5, v7}, Lorg/checkerframework/common/value/util/NumberMath;->unsignedShiftRight(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    goto :goto_2

    .line 859
    :pswitch_4
    invoke-virtual {v5, v7}, Lorg/checkerframework/common/value/util/NumberMath;->signedShiftRight(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 860
    goto :goto_2

    .line 856
    :pswitch_5
    invoke-virtual {v5, v7}, Lorg/checkerframework/common/value/util/NumberMath;->shiftLeft(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    goto :goto_2

    .line 847
    :pswitch_6
    invoke-virtual {v5, v7}, Lorg/checkerframework/common/value/util/NumberMath;->remainder(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v8

    .line 848
    .local v8, "resultR":Ljava/lang/Number;
    if-eqz v8, :cond_1

    .line 849
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 838
    .end local v8    # "resultR":Ljava/lang/Number;
    :pswitch_7
    invoke-virtual {v5, v7}, Lorg/checkerframework/common/value/util/NumberMath;->divide(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v8

    .line 839
    .local v8, "result":Ljava/lang/Number;
    if-eqz v8, :cond_1

    .line 840
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 844
    .end local v8    # "result":Ljava/lang/Number;
    :pswitch_8
    invoke-virtual {v5, v7}, Lorg/checkerframework/common/value/util/NumberMath;->times(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 845
    goto :goto_2

    .line 853
    :pswitch_9
    invoke-virtual {v5, v7}, Lorg/checkerframework/common/value/util/NumberMath;->minus(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    goto :goto_2

    .line 835
    :pswitch_a
    invoke-virtual {v5, v7}, Lorg/checkerframework/common/value/util/NumberMath;->plus(Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 836
    nop

    .line 876
    .end local v7    # "right":Ljava/lang/Number;
    :cond_1
    :goto_2
    goto/16 :goto_1

    .line 877
    .end local v4    # "left":Ljava/lang/Number;
    .end local v5    # "nmLeft":Lorg/checkerframework/common/value/util/NumberMath;, "Lorg/checkerframework/common/value/util/NumberMath<*>;"
    :cond_2
    goto/16 :goto_0

    .line 878
    :cond_3
    return-object v2

    .line 827
    .end local v2    # "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    :cond_4
    :goto_3
    const/4 v2, 0x0

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateValuesUnaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;
    .locals 7
    .param p1, "operand"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "op"    # Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 1078
    .local p3, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/common/value/ValueTransfer;->getNumericalValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v0

    .line 1079
    .local v0, "lefts":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    if-nez v0, :cond_0

    .line 1080
    const/4 v1, 0x0

    return-object v1

    .line 1082
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .local v1, "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Number;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 1084
    .local v3, "left":Ljava/lang/Number;
    invoke-static {v3}, Lorg/checkerframework/common/value/util/NumberMath;->getNumberMath(Ljava/lang/Number;)Lorg/checkerframework/common/value/util/NumberMath;

    move-result-object v4

    .line 1085
    .local v4, "nmLeft":Lorg/checkerframework/common/value/util/NumberMath;, "Lorg/checkerframework/common/value/util/NumberMath<*>;"
    sget-object v5, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$NumericalUnaryOps:[I

    invoke-virtual {p2}, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1096
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ValueTransfer: unsupported operation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1093
    :pswitch_0
    invoke-virtual {v4}, Lorg/checkerframework/common/value/util/NumberMath;->bitwiseComplement()Ljava/lang/Number;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1094
    goto :goto_1

    .line 1090
    :pswitch_1
    invoke-virtual {v4}, Lorg/checkerframework/common/value/util/NumberMath;->unaryMinus()Ljava/lang/Number;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1091
    goto :goto_1

    .line 1087
    :pswitch_2
    invoke-virtual {v4}, Lorg/checkerframework/common/value/util/NumberMath;->unaryPlus()Ljava/lang/Number;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    nop

    .line 1098
    .end local v3    # "left":Ljava/lang/Number;
    .end local v4    # "nmLeft":Lorg/checkerframework/common/value/util/NumberMath;, "Lorg/checkerframework/common/value/util/NumberMath<*>;"
    :goto_1
    goto :goto_0

    .line 1099
    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createAnnotationForStringConcatenation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 10
    .param p1, "leftOperand"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "rightOperand"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 615
    .local p3, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/common/value/ValueTransfer;->getStringValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v0

    .line 616
    .local v0, "leftValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2, p3}, Lorg/checkerframework/common/value/ValueTransfer;->getStringValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v1

    .line 618
    .local v1, "rightValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 619
    invoke-virtual {v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getContext()Lorg/checkerframework/framework/util/CFContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/checkerframework/framework/util/CFContext;->getChecker()Lorg/checkerframework/framework/source/SourceChecker;

    move-result-object v2

    const-string v3, "nonNullStringsConcatenation"

    invoke-virtual {v2, v3}, Lorg/checkerframework/framework/source/SourceChecker;->hasOption(Ljava/lang/String;)Z

    move-result v2

    .line 621
    .local v2, "nonNullStringConcat":Z
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 623
    const-string v3, "null"

    if-nez v2, :cond_1

    .line 624
    invoke-direct {p0, p1}, Lorg/checkerframework/common/value/ValueTransfer;->isNullable(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 625
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_0
    invoke-direct {p0, p2}, Lorg/checkerframework/common/value/ValueTransfer;->isNullable(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 628
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 631
    :cond_1
    instance-of v4, p1, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;

    if-eqz v4, :cond_2

    .line 632
    move-object v4, p1

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_2

    .line 634
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_2
    instance-of v4, p2, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;

    if-eqz v4, :cond_3

    .line 638
    move-object v4, p2

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->NULL:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_3

    .line 640
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :cond_3
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 646
    .local v3, "concatValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 647
    .local v5, "left":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 648
    .local v7, "right":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    .end local v7    # "right":Ljava/lang/String;
    goto :goto_2

    .line 650
    .end local v5    # "left":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 651
    :cond_5
    iget-object v4, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v4, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createStringAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    return-object v4

    .line 656
    .end local v3    # "concatValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    if-eqz v0, :cond_7

    .line 657
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getLengthsForStringValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_3

    .line 658
    :cond_7
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/common/value/ValueTransfer;->getStringLengths(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v3

    :goto_3
    nop

    .line 660
    .local v3, "leftLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_8

    .line 661
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getLengthsForStringValues(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_4

    .line 662
    :cond_8
    invoke-direct {p0, p2, p3}, Lorg/checkerframework/common/value/ValueTransfer;->getStringLengths(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v4

    :goto_4
    nop

    .line 664
    .local v4, "rightLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    .line 666
    if-nez v2, :cond_a

    .line 667
    invoke-direct {p0, p1}, Lorg/checkerframework/common/value/ValueTransfer;->isNullable(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_9

    .line 668
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    :cond_9
    invoke-direct {p0, p2}, Lorg/checkerframework/common/value/ValueTransfer;->isNullable(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 671
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_a
    invoke-direct {p0, v3, v4}, Lorg/checkerframework/common/value/ValueTransfer;->calculateLengthAddition(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 675
    .local v5, "concatLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v6, v5}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    return-object v6

    .line 680
    .end local v5    # "concatLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_b
    if-eqz v3, :cond_c

    .line 681
    invoke-static {v3}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getRangeFromValues(Ljava/util/List;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    goto :goto_5

    .line 682
    :cond_c
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/common/value/ValueTransfer;->getStringLengthRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    :goto_5
    nop

    .line 684
    .local v5, "leftLengthRange":Lorg/checkerframework/common/value/util/Range;
    if-eqz v4, :cond_d

    .line 685
    invoke-static {v4}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getRangeFromValues(Ljava/util/List;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v6

    goto :goto_6

    .line 686
    :cond_d
    invoke-direct {p0, p2, p3}, Lorg/checkerframework/common/value/ValueTransfer;->getStringLengthRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v6

    :goto_6
    nop

    .line 688
    .local v6, "rightLengthRange":Lorg/checkerframework/common/value/util/Range;
    if-eqz v5, :cond_10

    if-eqz v6, :cond_10

    .line 690
    if-nez v2, :cond_f

    .line 691
    invoke-direct {p0, p1}, Lorg/checkerframework/common/value/ValueTransfer;->isNullable(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v7

    const-wide/16 v8, 0x4

    if-eqz v7, :cond_e

    .line 692
    invoke-static {v8, v9, v8, v9}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/checkerframework/common/value/util/Range;->union(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    .line 694
    :cond_e
    invoke-direct {p0, p2}, Lorg/checkerframework/common/value/ValueTransfer;->isNullable(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 695
    invoke-static {v8, v9, v8, v9}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/checkerframework/common/value/util/Range;->union(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    .line 698
    :cond_f
    nop

    .line 699
    invoke-direct {p0, v5, v6}, Lorg/checkerframework/common/value/ValueTransfer;->calculateLengthRangeAddition(Lorg/checkerframework/common/value/util/Range;Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v7

    .line 700
    .local v7, "concatLengthRange":Lorg/checkerframework/common/value/util/Range;
    iget-object v8, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v8, v7}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v8

    return-object v8

    .line 703
    .end local v7    # "concatLengthRange":Lorg/checkerframework/common/value/util/Range;
    :cond_10
    iget-object v7, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v7, v7, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    return-object v7
.end method

.method private createAnnotationFromRangeAndAddToStore(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/common/value/util/Range;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 1
    .param p1, "store"    # Lorg/checkerframework/framework/flow/CFStore;
    .param p2, "range"    # Lorg/checkerframework/common/value/util/Range;
    .param p3, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 1316
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v0, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createIntRangeAnnotation(Lorg/checkerframework/common/value/util/Range;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 1317
    .local v0, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, p1, v0, p3}, Lorg/checkerframework/common/value/ValueTransfer;->addAnnotationToStore(Lorg/checkerframework/framework/flow/CFStore;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1318
    return-void
.end method

.method private createAnnotationFromResultsAndAddToStore(Lorg/checkerframework/framework/flow/CFStore;Ljava/util/List;Lorg/checkerframework/dataflow/cfg/node/Node;)V
    .locals 2
    .param p1, "store"    # Lorg/checkerframework/framework/flow/CFStore;
    .param p3, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Ljava/util/List<",
            "*>;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            ")V"
        }
    .end annotation

    .line 1306
    .local p2, "results":Ljava/util/List;, "Ljava/util/List<*>;"
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {p3}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createResultingAnnotation(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 1307
    .local v0, "anno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, p1, v0, p3}, Lorg/checkerframework/common/value/ValueTransfer;->addAnnotationToStore(Lorg/checkerframework/framework/flow/CFStore;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1308
    return-void
.end method

.method private createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p2, "resultAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 409
    .local p1, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    .line 411
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 410
    invoke-virtual {v0, p2, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFValue;

    .line 412
    .local v0, "newResultValue":Lorg/checkerframework/framework/flow/CFValue;
    new-instance v1, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFStore;

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v1
.end method

.method private createNewResultBoolean(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;Ljava/util/List;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "thenStore"    # Lorg/checkerframework/framework/flow/CFStore;
    .param p2, "elseStore"    # Lorg/checkerframework/framework/flow/CFStore;
    .param p4, "underlyingType"    # Ljavax/lang/model/type/TypeMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 421
    .local p3, "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v0, p3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createBooleanAnnotation(Ljava/util/List;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 422
    .local v0, "boolVal":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v1, v0, p4}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    .line 423
    .local v1, "newResultValue":Lorg/checkerframework/framework/flow/CFValue;
    if-eqz p2, :cond_0

    .line 424
    new-instance v2, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;

    invoke-direct {v2, v1, p1, p2}, Lorg/checkerframework/dataflow/analysis/ConditionalTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v2

    .line 426
    :cond_0
    new-instance v2, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-direct {v2, v1, p1}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v2
.end method

.method private getArrayOrStringAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 4
    .param p1, "arrayOrStringNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 474
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 475
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v1

    const-class v2, Lorg/checkerframework/common/value/qual/StringVal;

    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotationMirror(Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 476
    .local v0, "arrayOrStringAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v0, :cond_0

    .line 477
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 478
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    const-class v3, Lorg/checkerframework/common/value/qual/ArrayLen;

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotationMirror(Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 480
    :cond_0
    if-nez v0, :cond_1

    .line 481
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 483
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v2

    const-class v3, Lorg/checkerframework/common/value/qual/ArrayLenRange;

    .line 482
    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getAnnotationMirror(Lcom/sun/source/tree/Tree;Ljava/lang/Class;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 486
    :cond_1
    return-object v0
.end method

.method private getBooleanValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;
    .locals 3
    .param p1, "subNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 241
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p2, p1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFValue;

    .line 242
    .local v0, "value":Lorg/checkerframework/framework/flow/CFValue;
    nop

    .line 244
    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFValue;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 243
    const-string v2, "org.checkerframework.common.value.qual.BoolVal"

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getAnnotationByName(Ljava/util/Collection;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 245
    .local v1, "intAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getBooleanValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getCharValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;
    .locals 5
    .param p1, "subNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 250
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p2, p1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFValue;

    .line 253
    .local v0, "value":Lorg/checkerframework/framework/flow/CFValue;
    nop

    .line 255
    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFValue;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    .line 254
    const-string v2, "org.checkerframework.common.value.qual.IntVal"

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->getAnnotationByName(Ljava/util/Collection;Ljava/lang/String;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 256
    .local v1, "intAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-eqz v1, :cond_0

    .line 257
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getCharValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 260
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFValue;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->isIntRange(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueTransfer;->hierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 263
    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFValue;->getAnnotations()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v4, v4, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    .line 262
    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 264
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 265
    .local v2, "range":Lorg/checkerframework/common/value/util/Range;
    const-class v3, Ljava/lang/Character;

    invoke-static {v2, v3}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValuesFromRange(Lorg/checkerframework/common/value/util/Range;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 268
    .end local v2    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2
.end method

.method private getIntRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;
    .locals 2
    .param p1, "subNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/common/value/util/Range;"
        }
    .end annotation

    .line 328
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->getValueAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 329
    .local v0, "val":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/common/value/ValueTransfer;->getIntRangeFromAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    return-object v1
.end method

.method private getIntRangeFromAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "val"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 343
    if-eqz p2, :cond_5

    .line 344
    const-string v0, "org.checkerframework.common.value.qual.UnknownVal"

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v0, p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->isIntRange(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .local v0, "range":Lorg/checkerframework/common/value/util/Range;
    goto :goto_1

    .line 348
    .end local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_1
    const-string v0, "org.checkerframework.common.value.qual.IntVal"

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 350
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getRangeFromValues(Ljava/util/List;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 351
    .local v0, "range":Lorg/checkerframework/common/value/util/Range;
    goto :goto_1

    .end local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_2
    const-string v0, "org.checkerframework.common.value.qual.DoubleVal"

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 352
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getDoubleValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 353
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-static {v0}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getRangeFromValues(Ljava/util/List;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 354
    .local v0, "range":Lorg/checkerframework/common/value/util/Range;
    goto :goto_1

    .end local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_3
    const-string v0, "org.checkerframework.common.value.qual.BottomVal"

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 355
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v0

    .line 357
    :cond_4
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    .restart local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    goto :goto_1

    .line 345
    .end local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    :cond_5
    :goto_0
    sget-object v0, Lorg/checkerframework/common/value/util/Range;->EVERYTHING:Lorg/checkerframework/common/value/util/Range;

    .line 359
    .restart local v0    # "range":Lorg/checkerframework/common/value/util/Range;
    :goto_1
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/checkerframework/common/value/util/NumberUtils;->castRange(Ljavax/lang/model/type/TypeMirror;Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    return-object v1
.end method

.method private getIntRangeStringLengthRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;
    .locals 9
    .param p1, "subNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/common/value/util/Range;"
        }
    .end annotation

    .line 86
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->getIntRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 89
    .local v0, "valueRange":Lorg/checkerframework/common/value/util/Range;
    iget-wide v1, v0, Lorg/checkerframework/common/value/util/Range;->from:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 90
    .local v1, "fromLength":I
    iget-wide v2, v0, Lorg/checkerframework/common/value/util/Range;->to:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 92
    .local v2, "toLength":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 94
    .local v3, "lowerLength":I
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/checkerframework/common/value/util/Range;->contains(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    const/4 v3, 0x1

    .line 98
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 100
    .local v4, "upperLength":I
    int-to-long v5, v3

    int-to-long v7, v4

    invoke-static {v5, v6, v7, v8}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    return-object v5
.end method

.method private getNumericalValues(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;
    .locals 2
    .param p1, "subNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "valueAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ")",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 306
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 307
    const-string v1, "org.checkerframework.common.value.qual.UnknownVal"

    invoke-static {p2, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 310
    :cond_0
    const-string v1, "org.checkerframework.common.value.qual.BottomVal"

    invoke-static {p2, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 315
    :cond_1
    const-string v1, "org.checkerframework.common.value.qual.IntVal"

    invoke-static {p2, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .local v0, "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    goto :goto_0

    .line 317
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    :cond_2
    const-string v1, "org.checkerframework.common.value.qual.DoubleVal"

    invoke-static {p2, v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 319
    invoke-static {p2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getDoubleValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v0

    .line 323
    .restart local v0    # "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/checkerframework/common/value/util/NumberUtils;->castNumbers(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 321
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Number;>;"
    :cond_3
    return-object v0

    .line 309
    :cond_4
    :goto_1
    return-object v0
.end method

.method private getNumericalValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;
    .locals 2
    .param p1, "subNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 293
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->getValueAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 294
    .local v0, "valueAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/common/value/ValueTransfer;->getNumericalValues(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getStringLengthRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;
    .locals 9
    .param p1, "subNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/common/value/util/Range;"
        }
    .end annotation

    .line 111
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p2, p1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFValue;

    .line 113
    .local v0, "value":Lorg/checkerframework/framework/flow/CFValue;
    invoke-direct {p0, v0}, Lorg/checkerframework/common/value/ValueTransfer;->getValueAnnotation(Lorg/checkerframework/framework/flow/CFValue;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 114
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v1, :cond_0

    .line 115
    const/4 v2, 0x0

    return-object v2

    .line 117
    :cond_0
    invoke-static {v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "annoName":Ljava/lang/String;
    const-string v3, "org.checkerframework.common.value.qual.ArrayLenRange"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    return-object v3

    .line 120
    :cond_1
    const-string v3, "org.checkerframework.common.value.qual.BottomVal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    sget-object v3, Lorg/checkerframework/common/value/util/Range;->NOTHING:Lorg/checkerframework/common/value/util/Range;

    return-object v3

    .line 124
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-interface {v3}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v3

    .line 127
    .local v3, "subNodeTypeKind":Ljavax/lang/model/type/TypeKind;
    instance-of v4, p1, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;

    if-eqz v4, :cond_3

    .line 128
    move-object v4, p1

    check-cast v4, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;

    invoke-virtual {v4}, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/checkerframework/common/value/ValueTransfer;->getStringLengthRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 129
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->isIntRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 130
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->getIntRangeStringLengthRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 131
    :cond_4
    sget-object v4, Ljavax/lang/model/type/TypeKind;->INT:Ljavax/lang/model/type/TypeKind;

    const-wide/16 v5, 0x1

    if-ne v3, v4, :cond_5

    .line 133
    const-wide/16 v7, 0xb

    invoke-static {v5, v6, v7, v8}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 134
    :cond_5
    sget-object v4, Ljavax/lang/model/type/TypeKind;->LONG:Ljavax/lang/model/type/TypeKind;

    if-ne v3, v4, :cond_6

    .line 136
    const-wide/16 v7, 0x14

    invoke-static {v5, v6, v7, v8}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4

    .line 139
    :cond_6
    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x7fffffff

    invoke-static {v4, v5, v6, v7}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    return-object v4
.end method

.method private getStringLengths(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;
    .locals 10
    .param p1, "subNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 149
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p2, p1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFValue;

    .line 150
    .local v0, "value":Lorg/checkerframework/framework/flow/CFValue;
    invoke-direct {p0, v0}, Lorg/checkerframework/common/value/ValueTransfer;->getValueAnnotation(Lorg/checkerframework/framework/flow/CFValue;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 151
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 152
    return-object v2

    .line 154
    :cond_0
    invoke-static {v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, "annoName":Ljava/lang/String;
    const-string v4, "org.checkerframework.common.value.qual.ArrayLen"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 156
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getArrayLength(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 157
    :cond_1
    const-string v4, "org.checkerframework.common.value.qual.BottomVal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 161
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    .line 164
    .local v4, "subNodeTypeKind":Ljavax/lang/model/type/TypeKind;
    instance-of v5, p1, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;

    if-eqz v5, :cond_3

    .line 165
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/common/value/ValueTransfer;->getStringLengths(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 166
    :cond_3
    sget-object v5, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_4

    .line 168
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 169
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->isIntRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 173
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->getIntRangeStringLengthRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 174
    .local v2, "lengthRange":Lorg/checkerframework/common/value/util/Range;
    const-class v5, Ljava/lang/Integer;

    invoke-static {v2, v5}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValuesFromRange(Lorg/checkerframework/common/value/util/Range;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 175
    .end local v2    # "lengthRange":Lorg/checkerframework/common/value/util/Range;
    :cond_5
    sget-object v5, Ljavax/lang/model/type/TypeKind;->BYTE:Ljavax/lang/model/type/TypeKind;

    const-wide/16 v6, 0x1

    if-ne v4, v5, :cond_6

    .line 177
    const-wide/16 v8, 0x4

    invoke-static {v6, v7, v8, v9}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    const-class v5, Ljava/lang/Integer;

    invoke-static {v2, v5}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValuesFromRange(Lorg/checkerframework/common/value/util/Range;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 178
    :cond_6
    sget-object v5, Ljavax/lang/model/type/TypeKind;->SHORT:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_7

    .line 180
    const-wide/16 v8, 0x6

    invoke-static {v6, v7, v8, v9}, Lorg/checkerframework/common/value/util/Range;->create(JJ)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    const-class v5, Ljava/lang/Integer;

    invoke-static {v2, v5}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValuesFromRange(Lorg/checkerframework/common/value/util/Range;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 182
    :cond_7
    return-object v2
.end method

.method private getStringValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;
    .locals 8
    .param p1, "subNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p2, p1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFValue;

    .line 197
    .local v0, "value":Lorg/checkerframework/framework/flow/CFValue;
    invoke-direct {p0, v0}, Lorg/checkerframework/common/value/ValueTransfer;->getValueAnnotation(Lorg/checkerframework/framework/flow/CFValue;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 198
    .local v1, "anno":Ljavax/lang/model/element/AnnotationMirror;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 199
    return-object v2

    .line 201
    :cond_0
    invoke-static {v1}, Lorg/checkerframework/javacutil/AnnotationUtils;->annotationName(Ljavax/lang/model/element/AnnotationMirror;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "annoName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v4, "org.checkerframework.common.value.qual.StringVal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_1
    const-string v4, "org.checkerframework.common.value.qual.UnknownVal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_2
    const-string v4, "org.checkerframework.common.value.qual.BottomVal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :goto_0
    const/4 v4, -0x1

    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 215
    const-string v4, "org.checkerframework.common.value.qual.BoolVal"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 216
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->getBooleanValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v4

    .local v4, "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    goto :goto_2

    .line 208
    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    :pswitch_0
    invoke-static {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getStringValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 206
    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    .line 204
    :pswitch_2
    return-object v2

    .line 217
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-interface {v4}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v4

    sget-object v5, Ljavax/lang/model/type/TypeKind;->CHAR:Ljavax/lang/model/type/TypeKind;

    if-ne v4, v5, :cond_3

    .line 218
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->getCharValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v4

    .restart local v4    # "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    goto :goto_2

    .line 219
    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    :cond_3
    instance-of v4, p1, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;

    if-eqz v4, :cond_4

    .line 220
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;

    invoke-virtual {v2}, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/common/value/ValueTransfer;->getStringValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 221
    :cond_4
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->isIntRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 222
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->getIntRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    .line 223
    .local v4, "range":Lorg/checkerframework/common/value/util/Range;
    const-class v5, Ljava/lang/Long;

    invoke-static {v4, v5}, Lorg/checkerframework/common/value/ValueCheckerUtils;->getValuesFromRange(Lorg/checkerframework/common/value/util/Range;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v5

    .line 224
    .local v5, "longValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/checkerframework/common/value/util/NumberUtils;->castNumbers(Ljavax/lang/model/type/TypeMirror;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 225
    .end local v5    # "longValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    goto :goto_2

    .line 226
    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->getNumericalValues(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v4

    .line 228
    .restart local v4    # "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    :goto_2
    if-nez v4, :cond_6

    .line 229
    return-object v2

    .line 231
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v2, "stringValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 233
    .local v6, "o":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    .end local v6    # "o":Ljava/lang/Object;
    goto :goto_3

    .line 236
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "null"

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_4

    :cond_8
    move-object v5, v2

    :goto_4
    return-object v5

    :sswitch_data_0
    .sparse-switch
        -0x1e015684 -> :sswitch_2
        0x74d2eb1 -> :sswitch_1
        0x454d51d6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getValueAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 2
    .param p1, "subNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Ljavax/lang/model/element/AnnotationMirror;"
        }
    .end annotation

    .line 272
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p2, p1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFValue;

    .line 273
    .local v0, "value":Lorg/checkerframework/framework/flow/CFValue;
    invoke-direct {p0, v0}, Lorg/checkerframework/common/value/ValueTransfer;->getValueAnnotation(Lorg/checkerframework/framework/flow/CFValue;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    return-object v1
.end method

.method private getValueAnnotation(Lorg/checkerframework/framework/flow/CFValue;)Ljavax/lang/model/element/AnnotationMirror;
    .locals 3
    .param p1, "cfValue"    # Lorg/checkerframework/framework/flow/CFValue;

    .line 283
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueTransfer;->hierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    .line 284
    invoke-virtual {p1}, Lorg/checkerframework/framework/flow/CFValue;->getAnnotations()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    iget-object v2, v2, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->UNKNOWNVAL:Ljavax/lang/model/element/AnnotationMirror;

    .line 283
    invoke-virtual {v0, v1, v2}, Lorg/checkerframework/framework/type/QualifierHierarchy;->findAnnotationInHierarchy(Ljava/util/Collection;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    return-object v0
.end method

.method private isIntRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Z
    .locals 3
    .param p1, "subNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)Z"
        }
    .end annotation

    .line 370
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p2, p1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFValue;

    .line 371
    .local v0, "value":Lorg/checkerframework/framework/flow/CFValue;
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFValue;->getAnnotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->isIntRange(Ljava/util/Set;)Z

    move-result v1

    return v1
.end method

.method private isIntRangeOrIntegralUnknownVal(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Z
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)Z"
        }
    .end annotation

    .line 394
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->isIntRange(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x1

    return v0

    .line 397
    :cond_0
    invoke-virtual {p2, p1}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/flow/CFValue;

    invoke-direct {p0, v0}, Lorg/checkerframework/common/value/ValueTransfer;->getValueAnnotation(Lorg/checkerframework/framework/flow/CFValue;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/common/value/ValueTransfer;->isIntegralUnknownVal(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    return v0
.end method

.method private isIntegralUnknownVal(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "anno"    # Ljavax/lang/model/element/AnnotationMirror;

    .line 382
    const-string v0, "org.checkerframework.common.value.qual.UnknownVal"

    invoke-static {p2, v0}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isIntegral(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 382
    :goto_0
    return v0
.end method

.method private isNullable(Lorg/checkerframework/dataflow/cfg/node/Node;)Z
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/Node;

    .line 596
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 597
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/StringConversionNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/type/TypeKind;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 598
    return v1

    .line 600
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/StringLiteralNode;

    if-eqz v0, :cond_1

    .line 601
    return v1

    .line 602
    :cond_1
    instance-of v0, p1, Lorg/checkerframework/dataflow/cfg/node/StringConcatenateNode;

    if-eqz v0, :cond_2

    .line 603
    return v1

    .line 606
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/Node;->getTree()Lcom/sun/source/tree/Tree;

    move-result-object v0

    check-cast v0, Lcom/sun/source/tree/ExpressionTree;

    invoke-static {v0}, Lorg/checkerframework/javacutil/TreeUtils;->elementFromUse(Lcom/sun/source/tree/ExpressionTree;)Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 607
    .local v0, "element":Ljavax/lang/model/element/Element;
    invoke-static {v0}, Lorg/checkerframework/javacutil/ElementUtils;->isCompileTimeConstant(Ljavax/lang/model/element/Element;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private refineArrayAtLengthAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/framework/flow/CFStore;)V
    .locals 1
    .param p1, "arrayLengthNode"    # Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    .param p2, "store"    # Lorg/checkerframework/framework/flow/CFStore;

    .line 452
    invoke-static {p1}, Lorg/checkerframework/dataflow/util/NodeUtils;->isArrayLengthFieldAccess(Lorg/checkerframework/dataflow/cfg/node/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    return-void

    .line 456
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/checkerframework/common/value/ValueTransfer;->refineAtLengthAccess(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 457
    return-void
.end method

.method private refineAtLengthAccess(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFStore;)V
    .locals 8
    .param p1, "lengthNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "receiverNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "store"    # Lorg/checkerframework/framework/flow/CFStore;

    .line 494
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v0}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v0

    .line 498
    .local v0, "lengthRec":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    instance-of v1, v0, Lorg/checkerframework/dataflow/analysis/FlowExpressions$Unknown;

    if-eqz v1, :cond_0

    .line 499
    return-void

    .line 502
    :cond_0
    invoke-virtual {p3, v0}, Lorg/checkerframework/framework/flow/CFStore;->getValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    .line 503
    .local v1, "value":Lorg/checkerframework/framework/flow/CFValue;
    if-nez v1, :cond_1

    .line 504
    return-void

    .line 507
    :cond_1
    invoke-direct {p0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->getValueAnnotation(Lorg/checkerframework/framework/flow/CFValue;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 508
    .local v2, "lengthAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v2, :cond_2

    .line 509
    return-void

    .line 511
    :cond_2
    const-string v3, "org.checkerframework.common.value.qual.BottomVal"

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 514
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-static {v3, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v3

    .line 515
    .local v3, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {p3, v3, v2}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 516
    return-void

    .line 520
    .end local v3    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->isIntRange(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 521
    new-instance v3, Lorg/checkerframework/common/value/RangeOrListOfValues;

    invoke-static {v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getRange(Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/common/value/RangeOrListOfValues;-><init>(Lorg/checkerframework/common/value/util/Range;)V

    .local v3, "rolv":Lorg/checkerframework/common/value/RangeOrListOfValues;
    goto :goto_0

    .line 522
    .end local v3    # "rolv":Lorg/checkerframework/common/value/RangeOrListOfValues;
    :cond_4
    const-string v3, "org.checkerframework.common.value.qual.IntVal"

    invoke-static {v2, v3}, Lorg/checkerframework/javacutil/AnnotationUtils;->areSameByName(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 524
    invoke-static {v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getIntValues(Ljavax/lang/model/element/AnnotationMirror;)Ljava/util/List;

    move-result-object v3

    .line 525
    .local v3, "lengthValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v4, Lorg/checkerframework/common/value/RangeOrListOfValues;

    invoke-static {v3}, Lorg/checkerframework/common/value/RangeOrListOfValues;->convertLongsToInts(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/common/value/RangeOrListOfValues;-><init>(Ljava/util/List;)V

    move-object v3, v4

    .line 526
    .local v3, "rolv":Lorg/checkerframework/common/value/RangeOrListOfValues;
    nop

    .line 529
    :goto_0
    iget-object v4, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v3, v4}, Lorg/checkerframework/common/value/RangeOrListOfValues;->createAnnotation(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v4

    .line 530
    .local v4, "newRecAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, p2}, Lorg/checkerframework/common/value/ValueTransfer;->getArrayOrStringAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 536
    .local v5, "oldRecAnno":Ljavax/lang/model/element/AnnotationMirror;
    if-nez v5, :cond_5

    .line 537
    move-object v6, v4

    .local v6, "combinedRecAnno":Ljavax/lang/model/element/AnnotationMirror;
    goto :goto_1

    .line 539
    .end local v6    # "combinedRecAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_5
    iget-object v6, p0, Lorg/checkerframework/common/value/ValueTransfer;->hierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v6, v5, v4}, Lorg/checkerframework/framework/type/QualifierHierarchy;->greatestLowerBound(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v6

    .line 541
    .restart local v6    # "combinedRecAnno":Ljavax/lang/model/element/AnnotationMirror;
    :goto_1
    iget-object v7, p0, Lorg/checkerframework/common/value/ValueTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v7}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->getTypeFactory()Lorg/checkerframework/framework/type/GenericAnnotatedTypeFactory;

    move-result-object v7

    invoke-static {v7, p2}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v7

    .line 542
    .local v7, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    invoke-virtual {p3, v7, v6}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 543
    return-void

    .line 527
    .end local v3    # "rolv":Lorg/checkerframework/common/value/RangeOrListOfValues;
    .end local v4    # "newRecAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v5    # "oldRecAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v6    # "combinedRecAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v7    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    :cond_6
    return-void
.end method

.method private refineIntRanges(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;)Ljava/util/List;
    .locals 7
    .param p1, "leftNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "leftAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "rightNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "rightAnno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p5, "op"    # Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;
    .param p6, "thenStore"    # Lorg/checkerframework/framework/flow/CFStore;
    .param p7, "elseStore"    # Lorg/checkerframework/framework/flow/CFStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Ljavax/lang/model/element/AnnotationMirror;",
            "Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1241
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->getIntRangeFromAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v0

    .line 1242
    .local v0, "leftRange":Lorg/checkerframework/common/value/util/Range;
    invoke-direct {p0, p3, p4}, Lorg/checkerframework/common/value/ValueTransfer;->getIntRangeFromAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v1

    .line 1249
    .local v1, "rightRange":Lorg/checkerframework/common/value/util/Range;
    sget-object v2, Lorg/checkerframework/common/value/ValueTransfer$1;->$SwitchMap$org$checkerframework$common$value$ValueTransfer$ComparisonOperators:[I

    invoke-virtual {p5}, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1287
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ValueTransfer: unsupported operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1281
    :pswitch_0
    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/util/Range;->refineNotEqualTo(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 1282
    .local v2, "thenRightRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->refineNotEqualTo(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    .line 1283
    .local v3, "thenLeftRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/util/Range;->refineEqualTo(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    .line 1284
    .local v4, "elseRightRange":Lorg/checkerframework/common/value/util/Range;
    move-object v5, v4

    .line 1285
    .local v5, "elseLeftRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 1275
    .end local v2    # "thenRightRange":Lorg/checkerframework/common/value/util/Range;
    .end local v3    # "thenLeftRange":Lorg/checkerframework/common/value/util/Range;
    .end local v4    # "elseRightRange":Lorg/checkerframework/common/value/util/Range;
    .end local v5    # "elseLeftRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_1
    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/util/Range;->refineGreaterThanEq(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 1276
    .restart local v2    # "thenRightRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->refineLessThanEq(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    .line 1277
    .restart local v3    # "thenLeftRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->refineGreaterThan(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    .line 1278
    .restart local v5    # "elseLeftRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/util/Range;->refineLessThan(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    .line 1279
    .restart local v4    # "elseRightRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 1269
    .end local v2    # "thenRightRange":Lorg/checkerframework/common/value/util/Range;
    .end local v3    # "thenLeftRange":Lorg/checkerframework/common/value/util/Range;
    .end local v4    # "elseRightRange":Lorg/checkerframework/common/value/util/Range;
    .end local v5    # "elseLeftRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_2
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->refineLessThan(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    .line 1270
    .restart local v3    # "thenLeftRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/util/Range;->refineGreaterThan(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 1271
    .restart local v2    # "thenRightRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/util/Range;->refineLessThanEq(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    .line 1272
    .restart local v4    # "elseRightRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->refineGreaterThanEq(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    .line 1273
    .restart local v5    # "elseLeftRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 1263
    .end local v2    # "thenRightRange":Lorg/checkerframework/common/value/util/Range;
    .end local v3    # "thenLeftRange":Lorg/checkerframework/common/value/util/Range;
    .end local v4    # "elseRightRange":Lorg/checkerframework/common/value/util/Range;
    .end local v5    # "elseLeftRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_3
    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/util/Range;->refineLessThanEq(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 1264
    .restart local v2    # "thenRightRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->refineGreaterThanEq(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    .line 1265
    .restart local v3    # "thenLeftRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->refineLessThan(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    .line 1266
    .restart local v5    # "elseLeftRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/util/Range;->refineGreaterThan(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    .line 1267
    .restart local v4    # "elseRightRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 1257
    .end local v2    # "thenRightRange":Lorg/checkerframework/common/value/util/Range;
    .end local v3    # "thenLeftRange":Lorg/checkerframework/common/value/util/Range;
    .end local v4    # "elseRightRange":Lorg/checkerframework/common/value/util/Range;
    .end local v5    # "elseLeftRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_4
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->refineGreaterThan(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v3

    .line 1258
    .restart local v3    # "thenLeftRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/util/Range;->refineLessThan(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 1259
    .restart local v2    # "thenRightRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/util/Range;->refineGreaterThanEq(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    .line 1260
    .restart local v4    # "elseRightRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->refineLessThanEq(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    .line 1261
    .restart local v5    # "elseLeftRange":Lorg/checkerframework/common/value/util/Range;
    goto :goto_0

    .line 1251
    .end local v2    # "thenRightRange":Lorg/checkerframework/common/value/util/Range;
    .end local v3    # "thenLeftRange":Lorg/checkerframework/common/value/util/Range;
    .end local v4    # "elseRightRange":Lorg/checkerframework/common/value/util/Range;
    .end local v5    # "elseLeftRange":Lorg/checkerframework/common/value/util/Range;
    :pswitch_5
    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/util/Range;->refineEqualTo(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v2

    .line 1252
    .restart local v2    # "thenRightRange":Lorg/checkerframework/common/value/util/Range;
    move-object v3, v2

    .line 1253
    .restart local v3    # "thenLeftRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v1, v0}, Lorg/checkerframework/common/value/util/Range;->refineNotEqualTo(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v4

    .line 1254
    .restart local v4    # "elseRightRange":Lorg/checkerframework/common/value/util/Range;
    invoke-virtual {v0, v1}, Lorg/checkerframework/common/value/util/Range;->refineNotEqualTo(Lorg/checkerframework/common/value/util/Range;)Lorg/checkerframework/common/value/util/Range;

    move-result-object v5

    .line 1255
    .restart local v5    # "elseLeftRange":Lorg/checkerframework/common/value/util/Range;
    nop

    .line 1290
    :goto_0
    invoke-direct {p0, p6, v2, p3}, Lorg/checkerframework/common/value/ValueTransfer;->createAnnotationFromRangeAndAddToStore(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/common/value/util/Range;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1291
    invoke-direct {p0, p6, v3, p1}, Lorg/checkerframework/common/value/ValueTransfer;->createAnnotationFromRangeAndAddToStore(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/common/value/util/Range;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1292
    invoke-direct {p0, p7, v4, p3}, Lorg/checkerframework/common/value/ValueTransfer;->createAnnotationFromRangeAndAddToStore(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/common/value/util/Range;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1293
    invoke-direct {p0, p7, v5, p1}, Lorg/checkerframework/common/value/ValueTransfer;->createAnnotationFromRangeAndAddToStore(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/common/value/util/Range;Lorg/checkerframework/dataflow/cfg/node/Node;)V

    .line 1296
    const/4 v6, 0x0

    return-object v6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refineStringAtLengthInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/flow/CFStore;)V
    .locals 3
    .param p1, "stringLengthNode"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p2, "store"    # Lorg/checkerframework/framework/flow/CFStore;

    .line 465
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v0

    .line 467
    .local v0, "methodAccessNode":Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;
    iget-object v1, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getMethodIdentifier()Lorg/checkerframework/common/value/ValueMethodIdentifier;

    move-result-object v1

    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getMethod()Ljavax/lang/model/element/ExecutableElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/common/value/ValueMethodIdentifier;->isStringLengthMethod(Ljavax/lang/model/element/ExecutableElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-direct {p0, p1, v1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->refineAtLengthAccess(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 470
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic processConditionalPostconditions(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractStore;)V
    .locals 6

    .line 71
    move-object v4, p4

    check-cast v4, Lorg/checkerframework/framework/flow/CFStore;

    move-object v5, p5

    check-cast v5, Lorg/checkerframework/framework/flow/CFStore;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/checkerframework/common/value/ValueTransfer;->processConditionalPostconditions(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;)V

    return-void
.end method

.method protected processConditionalPostconditions(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;)V
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .param p2, "methodElement"    # Ljavax/lang/model/element/ExecutableElement;
    .param p3, "tree"    # Lcom/sun/source/tree/Tree;
    .param p4, "thenStore"    # Lorg/checkerframework/framework/flow/CFStore;
    .param p5, "elseStore"    # Lorg/checkerframework/framework/flow/CFStore;

    .line 1470
    iget-object v0, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v0}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getMethodIdentifier()Lorg/checkerframework/common/value/ValueMethodIdentifier;

    move-result-object v0

    .line 1471
    .local v0, "methodIdentifier":Lorg/checkerframework/common/value/ValueMethodIdentifier;
    invoke-virtual {v0, p2}, Lorg/checkerframework/common/value/ValueMethodIdentifier;->isStartsWithMethod(Ljavax/lang/model/element/ExecutableElement;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1472
    invoke-virtual {v0, p2}, Lorg/checkerframework/common/value/ValueMethodIdentifier;->isEndsWithMethod(Ljavax/lang/model/element/ExecutableElement;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1474
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getArgument(I)Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 1475
    .local v1, "argumentNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    invoke-direct {p0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->getArrayOrStringAnnotation(Lorg/checkerframework/dataflow/cfg/node/Node;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v2

    .line 1476
    .local v2, "argumentAnno":Ljavax/lang/model/element/AnnotationMirror;
    iget-object v3, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-virtual {v3, v2}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->getMinLenValue(Ljavax/lang/model/element/AnnotationMirror;)I

    move-result v3

    .line 1478
    .local v3, "minLength":I
    if-eqz v3, :cond_1

    .line 1479
    iget-object v4, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 1480
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;->getTarget()Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/dataflow/cfg/node/MethodAccessNode;->getReceiver()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/checkerframework/dataflow/analysis/FlowExpressions;->internalReprOf(Lorg/checkerframework/javacutil/AnnotationProvider;Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;

    move-result-object v4

    .line 1482
    .local v4, "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    iget-object v5, p0, Lorg/checkerframework/common/value/ValueTransfer;->atypefactory:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    .line 1483
    const v6, 0x7fffffff

    invoke-virtual {v5, v3, v6}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createArrayLenRangeAnnotation(II)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v5

    .line 1484
    .local v5, "minLenAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p4, v4, v5}, Lorg/checkerframework/framework/flow/CFStore;->insertValue(Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 1488
    .end local v1    # "argumentNode":Lorg/checkerframework/dataflow/cfg/node/Node;
    .end local v2    # "argumentAnno":Ljavax/lang/model/element/AnnotationMirror;
    .end local v3    # "minLength":I
    .end local v4    # "receiver":Lorg/checkerframework/dataflow/analysis/FlowExpressions$Receiver;
    .end local v5    # "minLenAnno":Ljavax/lang/model/element/AnnotationMirror;
    :cond_1
    invoke-super/range {p0 .. p5}, Lorg/checkerframework/framework/flow/CFTransfer;->processConditionalPostconditions(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljavax/lang/model/element/ExecutableElement;Lcom/sun/source/tree/Tree;Lorg/checkerframework/framework/flow/CFAbstractStore;Lorg/checkerframework/framework/flow/CFAbstractStore;)V

    .line 1489
    return-void
.end method

.method protected bridge synthetic strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 7

    .line 71
    move-object v4, p4

    check-cast v4, Lorg/checkerframework/framework/flow/CFValue;

    move-object v5, p5

    check-cast v5, Lorg/checkerframework/framework/flow/CFValue;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/checkerframework/common/value/ValueTransfer;->strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method protected strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 10
    .param p2, "firstNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p3, "secondNode"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p4, "firstValue"    # Lorg/checkerframework/framework/flow/CFValue;
    .param p5, "secondValue"    # Lorg/checkerframework/framework/flow/CFValue;
    .param p6, "notEqualTo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Z)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 1432
    .local p1, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    if-nez p4, :cond_0

    .line 1433
    return-object p1

    .line 1435
    :cond_0
    invoke-virtual {p2}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isNumeric(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1436
    invoke-virtual {p3}, Lorg/checkerframework/dataflow/cfg/node/Node;->getType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/javacutil/TypesUtils;->isNumeric(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1456
    :cond_1
    invoke-super/range {p0 .. p6}, Lorg/checkerframework/framework/flow/CFTransfer;->strengthenAnnotationOfEqualTo(Lorg/checkerframework/dataflow/analysis/TransferResult;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFAbstractValue;Lorg/checkerframework/framework/flow/CFAbstractValue;Z)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    return-object v0

    .line 1437
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/checkerframework/framework/flow/CFStore;

    .line 1438
    .local v8, "thenStore":Lorg/checkerframework/framework/flow/CFStore;
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lorg/checkerframework/framework/flow/CFStore;

    .line 1440
    .local v9, "elseStore":Lorg/checkerframework/framework/flow/CFStore;
    nop

    .line 1446
    if-eqz p6, :cond_3

    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->NOT_EQUAL:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->EQUAL:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    :goto_1
    move-object v5, v0

    .line 1441
    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    move-object v6, v8

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/common/value/ValueTransfer;->calculateBinaryComparison(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;)Ljava/util/List;

    move-result-object v0

    .line 1449
    .local v0, "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1451
    return-object p1

    .line 1453
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 1454
    .local v1, "underlyingType":Ljavax/lang/model/type/TypeMirror;
    move-object v2, p0

    invoke-direct {p0, v8, v9, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResultBoolean(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;Ljava/util/List;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v3

    return-object v3
.end method

.method public stringConcatenation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/dataflow/analysis/TransferResult;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 5
    .param p1, "leftOperand"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .param p2, "rightOperand"    # Lorg/checkerframework/dataflow/cfg/node/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/cfg/node/Node;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 712
    .local p3, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    .local p4, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 713
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/common/value/ValueTransfer;->createAnnotationForStringConcatenation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v0

    .line 715
    .local v0, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-virtual {p4}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {v1}, Lorg/checkerframework/framework/flow/CFValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 716
    .local v1, "underlyingType":Ljavax/lang/model/type/TypeMirror;
    iget-object v2, p0, Lorg/checkerframework/common/value/ValueTransfer;->analysis:Lorg/checkerframework/framework/flow/CFAbstractAnalysis;

    invoke-virtual {v2, v0, v1}, Lorg/checkerframework/framework/flow/CFAbstractAnalysis;->createSingleAnnotationValue(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/framework/flow/CFAbstractValue;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFValue;

    .line 717
    .local v2, "newResultValue":Lorg/checkerframework/framework/flow/CFValue;
    new-instance v3, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;

    invoke-virtual {p4}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFStore;

    invoke-direct {v3, v2, v4}, Lorg/checkerframework/dataflow/analysis/RegularTransferResult;-><init>(Lorg/checkerframework/dataflow/analysis/AbstractValue;Lorg/checkerframework/dataflow/analysis/Store;)V

    return-object v3
.end method

.method public bridge synthetic visitBitwiseAnd(Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitBitwiseAnd(Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitBitwiseAnd(Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 993
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitBitwiseAnd(Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 994
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 996
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BitwiseAndNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->BITWISE_AND:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 995
    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 997
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitBitwiseComplement(Lorg/checkerframework/dataflow/cfg/node/BitwiseComplementNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitBitwiseComplement(Lorg/checkerframework/dataflow/cfg/node/BitwiseComplementNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitBitwiseComplement(Lorg/checkerframework/dataflow/cfg/node/BitwiseComplementNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/BitwiseComplementNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/BitwiseComplementNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 1123
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitBitwiseComplement(Lorg/checkerframework/dataflow/cfg/node/BitwiseComplementNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 1124
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 1125
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BitwiseComplementNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->BITWISE_COMPLEMENT:Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    invoke-direct {p0, v1, v2, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalUnaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 1126
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitBitwiseOr(Lorg/checkerframework/dataflow/cfg/node/BitwiseOrNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitBitwiseOr(Lorg/checkerframework/dataflow/cfg/node/BitwiseOrNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitBitwiseOr(Lorg/checkerframework/dataflow/cfg/node/BitwiseOrNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/BitwiseOrNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/BitwiseOrNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 1003
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitBitwiseOr(Lorg/checkerframework/dataflow/cfg/node/BitwiseOrNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 1004
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 1006
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BitwiseOrNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BitwiseOrNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->BITWISE_OR:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 1005
    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 1007
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitBitwiseXor(Lorg/checkerframework/dataflow/cfg/node/BitwiseXorNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitBitwiseXor(Lorg/checkerframework/dataflow/cfg/node/BitwiseXorNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitBitwiseXor(Lorg/checkerframework/dataflow/cfg/node/BitwiseXorNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/BitwiseXorNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/BitwiseXorNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 1013
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitBitwiseXor(Lorg/checkerframework/dataflow/cfg/node/BitwiseXorNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 1014
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 1016
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BitwiseXorNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/BitwiseXorNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->BITWISE_XOR:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 1015
    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 1017
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitConditionalAnd(Lorg/checkerframework/dataflow/cfg/node/ConditionalAndNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitConditionalAnd(Lorg/checkerframework/dataflow/cfg/node/ConditionalAndNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalAnd(Lorg/checkerframework/dataflow/cfg/node/ConditionalAndNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ConditionalAndNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ConditionalAndNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 1557
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitConditionalAnd(Lorg/checkerframework/dataflow/cfg/node/ConditionalAndNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 1558
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 1560
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ConditionalAndNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ConditionalAndNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->AND:Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    .line 1559
    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateConditionalOperator(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v1

    .line 1561
    .local v1, "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    nop

    .line 1562
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFStore;

    .line 1563
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFStore;

    .line 1565
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {v4}, Lorg/checkerframework/framework/flow/CFValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 1561
    invoke-direct {p0, v2, v3, v1, v4}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResultBoolean(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;Ljava/util/List;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitConditionalNot(Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitConditionalNot(Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalNot(Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 1544
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitConditionalNot(Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 1545
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 1546
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ConditionalNotNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->NOT:Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateConditionalOperator(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v1

    .line 1547
    .local v1, "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    nop

    .line 1548
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFStore;

    .line 1549
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFStore;

    .line 1551
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {v4}, Lorg/checkerframework/framework/flow/CFValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 1547
    invoke-direct {p0, v2, v3, v1, v4}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResultBoolean(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;Ljava/util/List;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitConditionalOr(Lorg/checkerframework/dataflow/cfg/node/ConditionalOrNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitConditionalOr(Lorg/checkerframework/dataflow/cfg/node/ConditionalOrNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitConditionalOr(Lorg/checkerframework/dataflow/cfg/node/ConditionalOrNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/ConditionalOrNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/ConditionalOrNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 1571
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitConditionalOr(Lorg/checkerframework/dataflow/cfg/node/ConditionalOrNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 1572
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 1574
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ConditionalOrNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/ConditionalOrNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;->OR:Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;

    .line 1573
    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateConditionalOperator(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$ConditionalOperators;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljava/util/List;

    move-result-object v1

    .line 1575
    .local v1, "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    nop

    .line 1576
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/framework/flow/CFStore;

    .line 1577
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFStore;

    .line 1579
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {v4}, Lorg/checkerframework/framework/flow/CFValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 1575
    invoke-direct {p0, v2, v3, v1, v4}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResultBoolean(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;Ljava/util/List;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 2
    .param p1, "node"    # Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 434
    .local p2, "in":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitFieldAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 435
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFStore;

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/common/value/ValueTransfer;->refineArrayAtLengthAccess(Lorg/checkerframework/dataflow/cfg/node/FieldAccessNode;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 436
    return-object v0
.end method

.method public bridge synthetic visitFloatingDivision(Lorg/checkerframework/dataflow/cfg/node/FloatingDivisionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitFloatingDivision(Lorg/checkerframework/dataflow/cfg/node/FloatingDivisionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFloatingDivision(Lorg/checkerframework/dataflow/cfg/node/FloatingDivisionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/FloatingDivisionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/FloatingDivisionNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 927
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitFloatingDivision(Lorg/checkerframework/dataflow/cfg/node/FloatingDivisionNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 928
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 930
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/FloatingDivisionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/FloatingDivisionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->DIVISION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 929
    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 931
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitFloatingRemainder(Lorg/checkerframework/dataflow/cfg/node/FloatingRemainderNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitFloatingRemainder(Lorg/checkerframework/dataflow/cfg/node/FloatingRemainderNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitFloatingRemainder(Lorg/checkerframework/dataflow/cfg/node/FloatingRemainderNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/FloatingRemainderNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/FloatingRemainderNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 947
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitFloatingRemainder(Lorg/checkerframework/dataflow/cfg/node/FloatingRemainderNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 948
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 950
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/FloatingRemainderNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/FloatingRemainderNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->REMAINDER:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 949
    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 951
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitGreaterThan(Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitGreaterThan(Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitGreaterThan(Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 11
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 1389
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitGreaterThan(Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 1390
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFStore;

    .line 1391
    .local v1, "thenStore":Lorg/checkerframework/framework/flow/CFStore;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lorg/checkerframework/framework/flow/CFStore;

    .line 1392
    .local v10, "elseStore":Lorg/checkerframework/framework/flow/CFStore;
    nop

    .line 1394
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    .line 1395
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/checkerframework/framework/flow/CFValue;

    .line 1396
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    .line 1397
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/GreaterThanNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/checkerframework/framework/flow/CFValue;

    sget-object v7, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->GREATER_THAN:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    .line 1393
    move-object v2, p0

    move-object v8, v1

    move-object v9, v10

    invoke-direct/range {v2 .. v9}, Lorg/checkerframework/common/value/ValueTransfer;->calculateBinaryComparison(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;)Ljava/util/List;

    move-result-object v2

    .line 1401
    .local v2, "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {v3}, Lorg/checkerframework/framework/flow/CFValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 1402
    .local v3, "underlyingType":Ljavax/lang/model/type/TypeMirror;
    invoke-direct {p0, v1, v10, v2, v3}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResultBoolean(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;Ljava/util/List;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic visitGreaterThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitGreaterThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitGreaterThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 11
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 1408
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitGreaterThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 1409
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFStore;

    .line 1410
    .local v1, "thenStore":Lorg/checkerframework/framework/flow/CFStore;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lorg/checkerframework/framework/flow/CFStore;

    .line 1411
    .local v10, "elseStore":Lorg/checkerframework/framework/flow/CFStore;
    nop

    .line 1413
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    .line 1414
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/checkerframework/framework/flow/CFValue;

    .line 1415
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    .line 1416
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/GreaterThanOrEqualNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/checkerframework/framework/flow/CFValue;

    sget-object v7, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->GREATER_THAN_EQ:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    .line 1412
    move-object v2, p0

    move-object v8, v1

    move-object v9, v10

    invoke-direct/range {v2 .. v9}, Lorg/checkerframework/common/value/ValueTransfer;->calculateBinaryComparison(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;)Ljava/util/List;

    move-result-object v2

    .line 1420
    .local v2, "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {v3}, Lorg/checkerframework/framework/flow/CFValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 1421
    .local v3, "underlyingType":Ljavax/lang/model/type/TypeMirror;
    invoke-direct {p0, v1, v10, v2, v3}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResultBoolean(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;Ljava/util/List;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic visitIntegerDivision(Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitIntegerDivision(Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitIntegerDivision(Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 917
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitIntegerDivision(Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 918
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 920
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/IntegerDivisionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->DIVISION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 919
    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 921
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitIntegerRemainder(Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitIntegerRemainder(Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitIntegerRemainder(Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 937
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitIntegerRemainder(Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 938
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 940
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/IntegerRemainderNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->REMAINDER:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 939
    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 941
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitLeftShift(Lorg/checkerframework/dataflow/cfg/node/LeftShiftNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitLeftShift(Lorg/checkerframework/dataflow/cfg/node/LeftShiftNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitLeftShift(Lorg/checkerframework/dataflow/cfg/node/LeftShiftNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/LeftShiftNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LeftShiftNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 957
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitLeftShift(Lorg/checkerframework/dataflow/cfg/node/LeftShiftNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 958
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 960
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LeftShiftNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LeftShiftNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->SHIFT_LEFT:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 959
    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 961
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitLessThan(Lorg/checkerframework/dataflow/cfg/node/LessThanNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitLessThan(Lorg/checkerframework/dataflow/cfg/node/LessThanNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitLessThan(Lorg/checkerframework/dataflow/cfg/node/LessThanNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 11
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/LessThanNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LessThanNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 1351
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitLessThan(Lorg/checkerframework/dataflow/cfg/node/LessThanNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 1352
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFStore;

    .line 1353
    .local v1, "thenStore":Lorg/checkerframework/framework/flow/CFStore;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lorg/checkerframework/framework/flow/CFStore;

    .line 1354
    .local v10, "elseStore":Lorg/checkerframework/framework/flow/CFStore;
    nop

    .line 1356
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LessThanNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    .line 1357
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LessThanNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/checkerframework/framework/flow/CFValue;

    .line 1358
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LessThanNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    .line 1359
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LessThanNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/checkerframework/framework/flow/CFValue;

    sget-object v7, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->LESS_THAN:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    .line 1355
    move-object v2, p0

    move-object v8, v1

    move-object v9, v10

    invoke-direct/range {v2 .. v9}, Lorg/checkerframework/common/value/ValueTransfer;->calculateBinaryComparison(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;)Ljava/util/List;

    move-result-object v2

    .line 1363
    .local v2, "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {v3}, Lorg/checkerframework/framework/flow/CFValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 1364
    .local v3, "underlyingType":Ljavax/lang/model/type/TypeMirror;
    invoke-direct {p0, v1, v10, v2, v3}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResultBoolean(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;Ljava/util/List;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic visitLessThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitLessThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitLessThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 11
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 1370
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitLessThanOrEqual(Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 1371
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getThenStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFStore;

    .line 1372
    .local v1, "thenStore":Lorg/checkerframework/framework/flow/CFStore;
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getElseStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lorg/checkerframework/framework/flow/CFStore;

    .line 1373
    .local v10, "elseStore":Lorg/checkerframework/framework/flow/CFStore;
    nop

    .line 1375
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v3

    .line 1376
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lorg/checkerframework/framework/flow/CFValue;

    .line 1377
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v5

    .line 1378
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/LessThanOrEqualNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/checkerframework/dataflow/analysis/TransferInput;->getValueOfSubNode(Lorg/checkerframework/dataflow/cfg/node/Node;)Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lorg/checkerframework/framework/flow/CFValue;

    sget-object v7, Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;->LESS_THAN_EQ:Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;

    .line 1374
    move-object v2, p0

    move-object v8, v1

    move-object v9, v10

    invoke-direct/range {v2 .. v9}, Lorg/checkerframework/common/value/ValueTransfer;->calculateBinaryComparison(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/common/value/ValueTransfer$ComparisonOperators;Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;)Ljava/util/List;

    move-result-object v2

    .line 1382
    .local v2, "resultValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getResultValue()Lorg/checkerframework/dataflow/analysis/AbstractValue;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/framework/flow/CFValue;

    invoke-virtual {v3}, Lorg/checkerframework/framework/flow/CFValue;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 1383
    .local v3, "underlyingType":Ljavax/lang/model/type/TypeMirror;
    invoke-direct {p0, v1, v10, v2, v3}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResultBoolean(Lorg/checkerframework/framework/flow/CFStore;Lorg/checkerframework/framework/flow/CFStore;Ljava/util/List;Ljavax/lang/model/type/TypeMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v4

    return-object v4
.end method

.method public bridge synthetic visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 442
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitMethodInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 443
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {v0}, Lorg/checkerframework/dataflow/analysis/TransferResult;->getRegularStore()Lorg/checkerframework/dataflow/analysis/Store;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/framework/flow/CFStore;

    invoke-direct {p0, p1, v1}, Lorg/checkerframework/common/value/ValueTransfer;->refineStringAtLengthInvocation(Lorg/checkerframework/dataflow/cfg/node/MethodInvocationNode;Lorg/checkerframework/framework/flow/CFStore;)V

    .line 444
    return-object v0
.end method

.method public bridge synthetic visitNumericalAddition(Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitNumericalAddition(Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitNumericalAddition(Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 884
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitNumericalAddition(Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 885
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 887
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalAdditionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->ADDITION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 886
    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 888
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitNumericalMinus(Lorg/checkerframework/dataflow/cfg/node/NumericalMinusNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitNumericalMinus(Lorg/checkerframework/dataflow/cfg/node/NumericalMinusNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitNumericalMinus(Lorg/checkerframework/dataflow/cfg/node/NumericalMinusNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NumericalMinusNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalMinusNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 1105
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitNumericalMinus(Lorg/checkerframework/dataflow/cfg/node/NumericalMinusNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 1106
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 1107
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalMinusNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->MINUS:Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    invoke-direct {p0, v1, v2, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalUnaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 1108
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitNumericalMultiplication(Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitNumericalMultiplication(Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitNumericalMultiplication(Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 904
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitNumericalMultiplication(Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 905
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 907
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 908
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalMultiplicationNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->MULTIPLICATION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 906
    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 911
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitNumericalPlus(Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitNumericalPlus(Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitNumericalPlus(Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 1114
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitNumericalPlus(Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 1115
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 1116
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalPlusNode;->getOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    sget-object v2, Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;->PLUS:Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;

    invoke-direct {p0, v1, v2, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalUnaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalUnaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 1117
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 894
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitNumericalSubtraction(Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 895
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 897
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/NumericalSubtractionNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->SUBTRACTION:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 896
    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 898
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitSignedRightShift(Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitSignedRightShift(Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitSignedRightShift(Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 967
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitSignedRightShift(Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 968
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 970
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 971
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/SignedRightShiftNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->SIGNED_SHIFT_RIGHT:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 969
    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 974
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method

.method public bridge synthetic visitStringConcatenate(Lorg/checkerframework/dataflow/cfg/node/StringConcatenateNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitStringConcatenate(Lorg/checkerframework/dataflow/cfg/node/StringConcatenateNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitStringConcatenate(Lorg/checkerframework/dataflow/cfg/node/StringConcatenateNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/StringConcatenateNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/StringConcatenateNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 555
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitStringConcatenate(Lorg/checkerframework/dataflow/cfg/node/StringConcatenateNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 556
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/StringConcatenateNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/StringConcatenateNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2, v0}, Lorg/checkerframework/common/value/ValueTransfer;->stringConcatenation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/dataflow/analysis/TransferResult;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitStringConcatenateAssignment(Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitStringConcatenateAssignment(Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitStringConcatenateAssignment(Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 548
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitStringConcatenateAssignment(Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v0

    .line 549
    .local v0, "result":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/StringConcatenateAssignmentNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2, v0}, Lorg/checkerframework/common/value/ValueTransfer;->stringConcatenation(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/analysis/TransferInput;Lorg/checkerframework/dataflow/analysis/TransferResult;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitUnsignedRightShift(Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 71
    check-cast p2, Lorg/checkerframework/dataflow/analysis/TransferInput;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/value/ValueTransfer;->visitUnsignedRightShift(Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object p1

    return-object p1
.end method

.method public visitUnsignedRightShift(Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;Lorg/checkerframework/dataflow/analysis/TransferInput;)Lorg/checkerframework/dataflow/analysis/TransferResult;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;",
            "Lorg/checkerframework/dataflow/analysis/TransferInput<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;)",
            "Lorg/checkerframework/dataflow/analysis/TransferResult<",
            "Lorg/checkerframework/framework/flow/CFValue;",
            "Lorg/checkerframework/framework/flow/CFStore;",
            ">;"
        }
    .end annotation

    .line 980
    .local p2, "p":Lorg/checkerframework/dataflow/analysis/TransferInput;, "Lorg/checkerframework/dataflow/analysis/TransferInput<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/flow/CFTransfer;->visitUnsignedRightShift(Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/dataflow/analysis/TransferResult;

    .line 981
    .local v0, "transferResult":Lorg/checkerframework/dataflow/analysis/TransferResult;, "Lorg/checkerframework/dataflow/analysis/TransferResult<Lorg/checkerframework/framework/flow/CFValue;Lorg/checkerframework/framework/flow/CFStore;>;"
    nop

    .line 983
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;->getLeftOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v1

    .line 984
    invoke-virtual {p1}, Lorg/checkerframework/dataflow/cfg/node/UnsignedRightShiftNode;->getRightOperand()Lorg/checkerframework/dataflow/cfg/node/Node;

    move-result-object v2

    sget-object v3, Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;->UNSIGNED_SHIFT_RIGHT:Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;

    .line 982
    invoke-direct {p0, v1, v2, v3, p2}, Lorg/checkerframework/common/value/ValueTransfer;->calculateNumericalBinaryOp(Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/dataflow/cfg/node/Node;Lorg/checkerframework/common/value/ValueTransfer$NumericalBinaryOps;Lorg/checkerframework/dataflow/analysis/TransferInput;)Ljavax/lang/model/element/AnnotationMirror;

    move-result-object v1

    .line 987
    .local v1, "resultAnno":Ljavax/lang/model/element/AnnotationMirror;
    invoke-direct {p0, v0, v1}, Lorg/checkerframework/common/value/ValueTransfer;->createNewResult(Lorg/checkerframework/dataflow/analysis/TransferResult;Ljavax/lang/model/element/AnnotationMirror;)Lorg/checkerframework/dataflow/analysis/TransferResult;

    move-result-object v2

    return-object v2
.end method
