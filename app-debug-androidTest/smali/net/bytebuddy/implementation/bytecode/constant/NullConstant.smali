.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;
.super Ljava/lang/Enum;
.source "NullConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

.field public static final enum INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;


# instance fields
.field private final size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

    const/4 v1, 0x0

    sget-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v3, "INSTANCE"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;-><init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

    .line 27
    filled-new-array {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/bytebuddy/implementation/bytecode/StackSize;)V
    .locals 0
    .param p3, "size"    # Lnet/bytebuddy/implementation/bytecode/StackSize;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    invoke-virtual {p3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object p1

    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 27
    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;
    .locals 1

    .line 27
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 60
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/NullConstant;->size:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 52
    const/4 v0, 0x1

    return v0
.end method
