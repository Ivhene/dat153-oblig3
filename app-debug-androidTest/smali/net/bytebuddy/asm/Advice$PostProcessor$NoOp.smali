.class public final enum Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$PostProcessor;
.implements Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$PostProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NoOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$PostProcessor;",
        "Lnet/bytebuddy/asm/Advice$PostProcessor$Factory;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4705
    new-instance v0, Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;->INSTANCE:Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

    .line 4700
    filled-new-array {v0}, [Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;->$VALUES:[Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4700
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4700
    const-class v0, Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;
    .locals 1

    .line 4700
    sget-object v0, Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;->$VALUES:[Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$PostProcessor$NoOp;

    return-object v0
.end method


# virtual methods
.method public make(Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Z)Lnet/bytebuddy/asm/Advice$PostProcessor;
    .locals 0
    .param p1, "advice"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .param p2, "exit"    # Z

    .line 4721
    return-object p0
.end method

.method public resolve(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/asm/Advice$ArgumentHandler;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p3, "assigner"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .param p4, "argumentHandler"    # Lnet/bytebuddy/asm/Advice$ArgumentHandler;

    .line 4714
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;->INSTANCE:Lnet/bytebuddy/implementation/bytecode/StackManipulation$Trivial;

    return-object v0
.end method
