.class public abstract Lnet/bytebuddy/asm/Advice$AdviceVisitor;
.super Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "AdviceVisitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithExitAdvice;,
        Lnet/bytebuddy/asm/Advice$AdviceVisitor$WithoutExitAdvice;
    }
.end annotation


# static fields
.field private static final THIS_VARIABLE_INDEX:I = 0x0

.field private static final THIS_VARIABLE_NAME:Ljava/lang/String; = "this"


# instance fields
.field protected final argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

.field protected final instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

.field private final methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

.field protected final methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

.field protected final methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

.field private final preparationStart:Lnet/bytebuddy/jar/asm/Label;

.field protected final stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;Ljava/util/List;II)V
    .locals 19
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p3, "assigner"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .param p4, "exceptionHandler"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .param p5, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p6, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p7, "methodEnter"    # Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;
    .param p8, "methodExit"    # Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;
    .param p10, "writerFlags"    # I
    .param p11, "readerFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/jar/asm/MethodVisitor;",
            "Lnet/bytebuddy/implementation/Implementation$Context;",
            "Lnet/bytebuddy/implementation/bytecode/assign/Assigner;",
            "Lnet/bytebuddy/implementation/bytecode/StackManipulation;",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "Lnet/bytebuddy/description/method/MethodDescription;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;II)V"
        }
    .end annotation

    .line 9984
    .local p9, "postMethodTypes":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/description/type/TypeDescription;>;"
    move-object/from16 v11, p0

    move-object/from16 v10, p6

    sget v0, Lnet/bytebuddy/utility/OpenedClassReader;->ASM_API:I

    move-object/from16 v9, p1

    invoke-direct {v11, v0, v9}, Lnet/bytebuddy/utility/visitor/ExceptionTableSensitiveMethodVisitor;-><init>(ILnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 9985
    iput-object v10, v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->instrumentedMethod:Lnet/bytebuddy/description/method/MethodDescription;

    .line 9986
    new-instance v8, Lnet/bytebuddy/jar/asm/Label;

    invoke-direct {v8}, Lnet/bytebuddy/jar/asm/Label;-><init>()V

    iput-object v8, v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->preparationStart:Lnet/bytebuddy/jar/asm/Label;

    .line 9987
    invoke-interface/range {p8 .. p8}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->getArgumentHandlerFactory()Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

    move-result-object v0

    .line 9988
    invoke-interface/range {p7 .. p7}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v1

    .line 9989
    invoke-interface/range {p8 .. p8}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v2

    .line 9990
    invoke-interface/range {p7 .. p7}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->getNamedTypes()Ljava/util/Map;

    move-result-object v3

    .line 9987
    invoke-virtual {v0, v10, v1, v2, v3}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;->resolve(Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/description/type/TypeDefinition;Ljava/util/Map;)Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    move-result-object v7

    iput-object v7, v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    .line 9991
    invoke-interface/range {p8 .. p8}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9992
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 9993
    :cond_0
    invoke-interface/range {p8 .. p8}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v7}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->getNamedTypes()Ljava/util/List;

    move-result-object v1

    .line 9991
    invoke-static {v0, v1}, Lnet/bytebuddy/utility/CompoundList;->of(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v18

    .line 9994
    .local v18, "initialTypes":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-interface/range {p7 .. p7}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/bytebuddy/description/type/TypeDefinition;->represents(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9995
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v14, v0

    goto :goto_1

    .line 9996
    :cond_1
    invoke-interface/range {p7 .. p7}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDefinition;->asErasure()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v14, v0

    :goto_1
    nop

    .line 9997
    .local v14, "preMethodTypes":Ljava/util/List;, "Ljava/util/List<Lnet/bytebuddy/description/type/TypeDescription;>;"
    nop

    .line 10001
    invoke-interface {v7}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->isCopyingArguments()Z

    move-result v16

    .line 9997
    move-object/from16 v12, p6

    move-object/from16 v13, v18

    move-object/from16 v15, p9

    move/from16 v17, p10

    invoke-static/range {v12 .. v17}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$Default;->of(Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZI)Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    move-result-object v12

    iput-object v12, v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    .line 10003
    nop

    .line 10008
    invoke-interface/range {p8 .. p8}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->isAlive()Z

    move-result v5

    .line 10009
    invoke-interface {v7}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->isCopyingArguments()Z

    move-result v6

    .line 10010
    invoke-interface/range {p2 .. p2}, Lnet/bytebuddy/implementation/Implementation$Context;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v13

    .line 10003
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, v18

    move-object v3, v14

    move-object/from16 v4, p9

    move-object v15, v7

    move-object v7, v13

    move-object v13, v8

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-static/range {v0 .. v9}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$Default;->of(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZLnet/bytebuddy/ClassFileVersion;II)Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    move-result-object v9

    iput-object v9, v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    .line 10013
    move-object/from16 v0, p7

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v15

    move-object v7, v12

    move-object v8, v9

    move-object/from16 v16, v9

    move-object/from16 v9, p4

    move-object/from16 v10, p0

    invoke-interface/range {v0 .. v10}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;->bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    move-result-object v0

    iput-object v0, v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    .line 10023
    new-instance v10, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation$ForLabel;

    invoke-direct {v10, v13}, Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation$ForLabel;-><init>(Lnet/bytebuddy/jar/asm/Label;)V

    move-object/from16 v0, p8

    move-object/from16 v8, v16

    invoke-interface/range {v0 .. v10}, Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;->bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    move-result-object v0

    iput-object v0, v11, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    .line 10033
    return-void
.end method


# virtual methods
.method protected onAfterExceptionTable()V
    .locals 3

    .line 10037
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;->prepare()V

    .line 10038
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->onUserPrepare()V

    .line 10039
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;->prepare()V

    .line 10040
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;->initialize()V

    .line 10041
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodExit:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;->initialize()V

    .line 10042
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->injectInitializationFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 10043
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodEnter:Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;

    invoke-interface {v0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;->apply()V

    .line 10044
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->preparationStart:Lnet/bytebuddy/jar/asm/Label;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLabel(Lnet/bytebuddy/jar/asm/Label;)V

    .line 10045
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v1, v2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->prepare(Lnet/bytebuddy/jar/asm/MethodVisitor;)I

    move-result v1

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->requireStackSize(I)V

    .line 10046
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    invoke-interface {v0, v1}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->injectStartFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;)V

    .line 10047
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->onUserStart()V

    .line 10048
    return-void
.end method

.method protected abstract onUserEnd()V
.end method

.method protected abstract onUserPrepare()V
.end method

.method protected abstract onUserStart()V
.end method

.method public onVisitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "localVariableLength"    # I
    .param p3, "localVariable"    # [Ljava/lang/Object;
    .param p4, "stackSize"    # I
    .param p5, "stack"    # [Ljava/lang/Object;

    .line 10072
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->stackMapFrameHandler:Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;->translateFrame(Lnet/bytebuddy/jar/asm/MethodVisitor;II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 10073
    return-void
.end method

.method protected onVisitIincInsn(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "increment"    # I

    .line 10067
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v1, p1}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->argument(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitIincInsn(II)V

    .line 10068
    return-void
.end method

.method protected onVisitVarInsn(II)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "offset"    # I

    .line 10062
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    invoke-interface {v1, p2}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->argument(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitVarInsn(II)V

    .line 10063
    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "descriptor"    # Ljava/lang/String;
    .param p3, "signature"    # Ljava/lang/String;
    .param p4, "start"    # Lnet/bytebuddy/jar/asm/Label;
    .param p5, "end"    # Lnet/bytebuddy/jar/asm/Label;
    .param p6, "index"    # I

    .line 10084
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    if-nez p6, :cond_0

    const-string v1, "this"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v6, p6

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    .line 10086
    invoke-interface {v1, p6}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->variable(I)I

    move-result v1

    move v6, v1

    .line 10084
    :goto_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Label;Lnet/bytebuddy/jar/asm/Label;I)V

    .line 10087
    return-void
.end method

.method public visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;
    .locals 11
    .param p1, "typeReference"    # I
    .param p2, "typePath"    # Lnet/bytebuddy/jar/asm/TypePath;
    .param p3, "start"    # [Lnet/bytebuddy/jar/asm/Label;
    .param p4, "end"    # [Lnet/bytebuddy/jar/asm/Label;
    .param p5, "index"    # [I
    .param p6, "descriptor"    # Ljava/lang/String;
    .param p7, "visible"    # Z

    .line 10097
    move-object v0, p0

    move-object/from16 v1, p5

    array-length v2, v1

    new-array v2, v2, [I

    .line 10098
    .local v2, "translated":[I
    const/4 v3, 0x0

    .local v3, "anIndex":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 10099
    iget-object v4, v0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->argumentHandler:Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;

    aget v5, v1, v3

    invoke-interface {v4, v5}, Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;->variable(I)I

    move-result v4

    aput v4, v2, v3

    .line 10098
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10101
    .end local v3    # "anIndex":I
    :cond_0
    iget-object v3, v0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, v2

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v10}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitLocalVariableAnnotation(ILnet/bytebuddy/jar/asm/TypePath;[Lnet/bytebuddy/jar/asm/Label;[Lnet/bytebuddy/jar/asm/Label;[ILjava/lang/String;Z)Lnet/bytebuddy/jar/asm/AnnotationVisitor;

    move-result-object v3

    return-object v3
.end method

.method public visitMaxs(II)V
    .locals 3
    .param p1, "stackSize"    # I
    .param p2, "localVariableLength"    # I

    .line 10077
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->onUserEnd()V

    .line 10078
    iget-object v0, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->mv:Lnet/bytebuddy/jar/asm/MethodVisitor;

    iget-object v1, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    invoke-interface {v1, p1}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->compoundStackSize(I)I

    move-result v1

    iget-object v2, p0, Lnet/bytebuddy/asm/Advice$AdviceVisitor;->methodSizeHandler:Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;

    invoke-interface {v2, p2}, Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;->compoundLocalVariableLength(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMaxs(II)V

    .line 10079
    return-void
.end method
