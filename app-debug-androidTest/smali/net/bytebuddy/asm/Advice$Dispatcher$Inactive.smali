.class public final enum Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;
.implements Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Inactive"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;",
        "Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 7482
    new-instance v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->INSTANCE:Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    .line 7477
    filled-new-array {v0}, [Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7477
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7477
    const-class v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;
    .locals 1

    .line 7477
    sget-object v0, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->$VALUES:[Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;

    return-object v0
.end method


# virtual methods
.method public apply()V
    .locals 0

    .line 7572
    return-void
.end method

.method public asMethodEnter(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;
    .locals 0
    .param p2, "classReader"    # Lnet/bytebuddy/jar/asm/ClassReader;
    .param p3, "methodExit"    # Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;
    .param p4, "postProcessorFactory"    # Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/jar/asm/ClassReader;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;",
            "Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;",
            ")",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodEnter;"
        }
    .end annotation

    .line 7540
    .local p1, "userFactories":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<*>;>;"
    return-object p0
.end method

.method public asMethodExit(Ljava/util/List;Lnet/bytebuddy/jar/asm/ClassReader;Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;)Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;
    .locals 0
    .param p2, "classReader"    # Lnet/bytebuddy/jar/asm/ClassReader;
    .param p3, "methodEnter"    # Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;
    .param p4, "postProcessorFactory"    # Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
            "*>;>;",
            "Lnet/bytebuddy/jar/asm/ClassReader;",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Unresolved;",
            "Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;",
            ")",
            "Lnet/bytebuddy/asm/Advice$Dispatcher$Resolved$ForMethodExit;"
        }
    .end annotation

    .line 7550
    .local p1, "userFactories":Ljava/util/List;, "Ljava/util/List<+Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<*>;>;"
    return-object p0
.end method

.method public bind(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;)Lnet/bytebuddy/asm/Advice$Dispatcher$Bound;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p4, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p5, "assigner"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .param p6, "argumentHandler"    # Lnet/bytebuddy/asm/Advice$ArgumentHandler$ForInstrumentedMethod;
    .param p7, "methodSizeHandler"    # Lnet/bytebuddy/asm/Advice$MethodSizeHandler$ForInstrumentedMethod;
    .param p8, "stackMapFrameHandler"    # Lnet/bytebuddy/asm/Advice$StackMapFrameHandler$ForInstrumentedMethod;
    .param p9, "exceptionHandler"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .param p10, "relocation"    # Lnet/bytebuddy/asm/Advice$Dispatcher$RelocationHandler$Relocation;

    .line 7587
    return-object p0
.end method

.method public bridge synthetic getAdviceType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 7477
    invoke-virtual {p0}, Lnet/bytebuddy/asm/Advice$Dispatcher$Inactive;->getAdviceType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getAdviceType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 7502
    sget-object v0, Lnet/bytebuddy/description/type/TypeDescription;->VOID:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public getArgumentHandlerFactory()Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;
    .locals 1

    .line 7530
    sget-object v0, Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;->SIMPLE:Lnet/bytebuddy/asm/Advice$ArgumentHandler$Factory;

    return-object v0
.end method

.method public getNamedTypes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;"
        }
    .end annotation

    .line 7516
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getThrowable()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 7523
    invoke-static {}, Lnet/bytebuddy/asm/Advice$NoExceptionHandler;->access$1700()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 0

    .line 7565
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .line 7488
    const/4 v0, 0x0

    return v0
.end method

.method public isBinary()Z
    .locals 1

    .line 7495
    const/4 v0, 0x0

    return v0
.end method

.method public isPrependLineNumber()Z
    .locals 1

    .line 7509
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()V
    .locals 0

    .line 7558
    return-void
.end method
