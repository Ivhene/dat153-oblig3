.class public final enum Lnet/bytebuddy/implementation/StubMethod;
.super Ljava/lang/Enum;
.source "StubMethod.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation$Composable;
.implements Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/StubMethod;",
        ">;",
        "Lnet/bytebuddy/implementation/Implementation$Composable;",
        "Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/StubMethod;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/StubMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Lnet/bytebuddy/implementation/StubMethod;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/StubMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/StubMethod;->INSTANCE:Lnet/bytebuddy/implementation/StubMethod;

    .line 37
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/StubMethod;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/StubMethod;->$VALUES:[Lnet/bytebuddy/implementation/StubMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/StubMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lnet/bytebuddy/implementation/StubMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/StubMethod;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/StubMethod;
    .locals 1

    .line 37
    sget-object v0, Lnet/bytebuddy/implementation/StubMethod;->$VALUES:[Lnet/bytebuddy/implementation/StubMethod;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/StubMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/StubMethod;

    return-object v0
.end method


# virtual methods
.method public andThen(Lnet/bytebuddy/implementation/Implementation$Composable;)Lnet/bytebuddy/implementation/Implementation$Composable;
    .locals 0
    .param p1, "implementation"    # Lnet/bytebuddy/implementation/Implementation$Composable;

    .line 69
    return-object p1
.end method

.method public andThen(Lnet/bytebuddy/implementation/Implementation;)Lnet/bytebuddy/implementation/Implementation;
    .locals 0
    .param p1, "implementation"    # Lnet/bytebuddy/implementation/Implementation;

    .line 62
    return-object p1
.end method

.method public appender(Lnet/bytebuddy/implementation/Implementation$Target;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 0
    .param p1, "implementationTarget"    # Lnet/bytebuddy/implementation/Implementation$Target;

    .line 55
    return-object p0
.end method

.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;
    .locals 4
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;
    .param p3, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 78
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 79
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/constant/DefaultValue;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 80
    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v2

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/member/MethodReturn;->of(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    .line 81
    invoke-virtual {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    .line 82
    .local v0, "stackSize":Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;->getMaximalSize()I

    move-result v2

    invoke-interface {p3}, Lnet/bytebuddy/description/method/MethodDescription;->getStackSize()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Size;-><init>(II)V

    return-object v1
.end method

.method public prepare(Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;)Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;
    .locals 0
    .param p1, "instrumentedType"    # Lnet/bytebuddy/dynamic/scaffold/InstrumentedType;

    .line 48
    return-object p1
.end method
