.class public final enum Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;
.super Ljava/lang/Enum;
.source "TypeProxy.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/auxiliary/TypeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "AbstractMethodErrorThrow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;


# instance fields
.field private final implementation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 138
    new-instance v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;->INSTANCE:Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;

    .line 133
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 150
    const-class p1, Ljava/lang/AbstractMethodError;

    invoke-static {p1}, Lnet/bytebuddy/description/type/TypeDescription$ForLoadedType;->of(Ljava/lang/Class;)Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object p1

    .line 151
    .local p1, "abstractMethodError":Lnet/bytebuddy/description/type/TypeDescription;
    invoke-interface {p1}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object p2

    .line 152
    invoke-static {}, Lnet/bytebuddy/matcher/ElementMatchers;->isConstructor()Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Lnet/bytebuddy/matcher/ElementMatchers;->takesArguments(I)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/bytebuddy/matcher/ElementMatcher$Junction;->and(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/ElementMatcher$Junction;

    move-result-object v0

    invoke-interface {p2, v0}, Lnet/bytebuddy/description/method/MethodList;->filter(Lnet/bytebuddy/matcher/ElementMatcher;)Lnet/bytebuddy/matcher/FilterableList;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/MethodList;

    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodList;->getOnly()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/bytebuddy/description/method/MethodDescription;

    .line 153
    .local p2, "constructor":Lnet/bytebuddy/description/method/MethodDescription;
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v2, 0x4

    new-array v2, v2, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/TypeCreation;->of(Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/Duplication;->SINGLE:Lnet/bytebuddy/implementation/bytecode/Duplication;

    aput-object v3, v2, v1

    .line 155
    invoke-static {p2}, Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation;->invoke(Lnet/bytebuddy/description/method/MethodDescription;)Lnet/bytebuddy/implementation/bytecode/member/MethodInvocation$WithImplicitInvocationTargetType;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v1, 0x3

    sget-object v3, Lnet/bytebuddy/implementation/bytecode/Throw;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/Throw;

    aput-object v3, v2, v1

    invoke-direct {v0, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    iput-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;->implementation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 157
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 133
    const-class v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;
    .locals 1

    .line 133
    sget-object v0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;->$VALUES:[Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 170
    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;->implementation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lnet/bytebuddy/implementation/auxiliary/TypeProxy$AbstractMethodErrorThrow;->implementation:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    return v0
.end method
