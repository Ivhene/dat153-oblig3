.class public final enum Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$Delegator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$Delegator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForStaticInvocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$Delegator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4789
    new-instance v0, Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;->INSTANCE:Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;

    .line 4784
    filled-new-array {v0}, [Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;->$VALUES:[Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4784
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 4784
    const-class v0, Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;
    .locals 1

    .line 4784
    sget-object v0, Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;->$VALUES:[Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$Delegator$ForStaticInvocation;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;Z)V
    .locals 6
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "adviceMethod"    # Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .param p3, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p4, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;
    .param p5, "exit"    # Z

    .line 4799
    const/16 v1, 0xb8

    .line 4800
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInternalName()Ljava/lang/String;

    move-result-object v2

    .line 4801
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v3

    .line 4802
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 4799
    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/bytebuddy/jar/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4804
    return-void
.end method
