.class public final enum Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;
.super Ljava/lang/Enum;
.source "LongConstant.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/bytecode/constant/LongConstant$ConstantPool;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;",
        ">;",
        "Lnet/bytebuddy/implementation/bytecode/StackManipulation;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

.field public static final enum ONE:Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

.field private static final SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

.field public static final enum ZERO:Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;


# instance fields
.field private final opcode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

    const/4 v1, 0x0

    const/16 v2, 0x9

    const-string v3, "ZERO"

    invoke-direct {v0, v3, v1, v2}, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

    .line 38
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

    const/4 v2, 0x1

    const/16 v3, 0xa

    const-string v4, "ONE"

    invoke-direct {v1, v4, v2, v3}, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

    .line 28
    filled-new-array {v0, v1}, [Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

    .line 43
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "opcode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->opcode:I

    .line 57
    return-void
.end method

.method static synthetic access$000()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1

    .line 28
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public static forValue(J)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 2
    .param p0, "value"    # J

    .line 68
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->ZERO:Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

    return-object v0

    .line 70
    :cond_0
    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 71
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->ONE:Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

    return-object v0

    .line 73
    :cond_1
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant$ConstantPool;

    invoke-direct {v0, p0, p1}, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant$ConstantPool;-><init>(J)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;
    .locals 1

    .line 28
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 88
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->opcode:I

    invoke-virtual {p1, v0}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitInsn(I)V

    .line 89
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/constant/LongConstant;->SIZE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 81
    const/4 v0, 0x1

    return v0
.end method
