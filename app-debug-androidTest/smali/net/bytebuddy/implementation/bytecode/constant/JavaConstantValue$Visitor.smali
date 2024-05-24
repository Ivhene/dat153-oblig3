.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;
.super Ljava/lang/Enum;
.source "JavaConstantValue.java"

# interfaces
.implements Lnet/bytebuddy/utility/JavaConstant$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;",
        ">;",
        "Lnet/bytebuddy/utility/JavaConstant$Visitor<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    .line 66
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 66
    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;
    .locals 1

    .line 66
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onDynamic(Lnet/bytebuddy/utility/JavaConstant$Dynamic;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->onDynamic(Lnet/bytebuddy/utility/JavaConstant$Dynamic;)Lnet/bytebuddy/jar/asm/ConstantDynamic;

    move-result-object p1

    return-object p1
.end method

.method public onDynamic(Lnet/bytebuddy/utility/JavaConstant$Dynamic;)Lnet/bytebuddy/jar/asm/ConstantDynamic;
    .locals 5
    .param p1, "constant"    # Lnet/bytebuddy/utility/JavaConstant$Dynamic;

    .line 113
    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->getArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 114
    .local v0, "argument":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 115
    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->getArguments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/utility/JavaConstant;

    invoke-interface {v2, p0}, Lnet/bytebuddy/utility/JavaConstant;->accept(Lnet/bytebuddy/utility/JavaConstant$Visitor;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "index":I
    :cond_0
    new-instance v1, Lnet/bytebuddy/jar/asm/ConstantDynamic;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->getName()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v3

    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$Dynamic;->getBootstrap()Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    move-result-object v4

    invoke-virtual {p0, v4}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->onMethodHandle(Lnet/bytebuddy/utility/JavaConstant$MethodHandle;)Lnet/bytebuddy/jar/asm/Handle;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lnet/bytebuddy/jar/asm/ConstantDynamic;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/bytebuddy/jar/asm/Handle;[Ljava/lang/Object;)V

    .line 117
    return-object v1
.end method

.method public bridge synthetic onMethodHandle(Lnet/bytebuddy/utility/JavaConstant$MethodHandle;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->onMethodHandle(Lnet/bytebuddy/utility/JavaConstant$MethodHandle;)Lnet/bytebuddy/jar/asm/Handle;

    move-result-object p1

    return-object p1
.end method

.method public onMethodHandle(Lnet/bytebuddy/utility/JavaConstant$MethodHandle;)Lnet/bytebuddy/jar/asm/Handle;
    .locals 7
    .param p1, "constant"    # Lnet/bytebuddy/utility/JavaConstant$MethodHandle;

    .line 102
    new-instance v6, Lnet/bytebuddy/jar/asm/Handle;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getHandleType()Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;

    move-result-object v0

    invoke-virtual {v0}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle$HandleType;->getIdentifier()I

    move-result v1

    .line 103
    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getName()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodHandle;->getOwnerType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isInterface()Z

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/Handle;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 102
    return-object v6
.end method

.method public bridge synthetic onMethodType(Lnet/bytebuddy/utility/JavaConstant$MethodType;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->onMethodType(Lnet/bytebuddy/utility/JavaConstant$MethodType;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    return-object p1
.end method

.method public onMethodType(Lnet/bytebuddy/utility/JavaConstant$MethodType;)Lnet/bytebuddy/jar/asm/Type;
    .locals 4
    .param p1, "constant"    # Lnet/bytebuddy/utility/JavaConstant$MethodType;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 92
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getParameterTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v1

    invoke-interface {v1}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDescription;

    .line 93
    .local v2, "parameterType":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .end local v2    # "parameterType":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_0

    .line 95
    :cond_0
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$MethodType;->getReturnType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/bytebuddy/jar/asm/Type;->getMethodType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic onType(Lnet/bytebuddy/utility/JavaConstant$Simple;)Ljava/lang/Object;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/JavaConstantValue$Visitor;->onType(Lnet/bytebuddy/utility/JavaConstant$Simple;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object p1

    return-object p1
.end method

.method public onType(Lnet/bytebuddy/utility/JavaConstant$Simple;)Lnet/bytebuddy/jar/asm/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/utility/JavaConstant$Simple<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            ">;)",
            "Lnet/bytebuddy/jar/asm/Type;"
        }
    .end annotation

    .line 84
    .local p1, "constant":Lnet/bytebuddy/utility/JavaConstant$Simple;, "Lnet/bytebuddy/utility/JavaConstant$Simple<Lnet/bytebuddy/description/type/TypeDescription;>;"
    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$Simple;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/jar/asm/Type;->getType(Ljava/lang/String;)Lnet/bytebuddy/jar/asm/Type;

    move-result-object v0

    return-object v0
.end method

.method public onValue(Lnet/bytebuddy/utility/JavaConstant$Simple;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/utility/JavaConstant$Simple<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 77
    .local p1, "constant":Lnet/bytebuddy/utility/JavaConstant$Simple;, "Lnet/bytebuddy/utility/JavaConstant$Simple<*>;"
    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaConstant$Simple;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
