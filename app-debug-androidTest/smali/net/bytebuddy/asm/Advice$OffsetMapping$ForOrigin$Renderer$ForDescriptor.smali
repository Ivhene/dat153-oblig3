.class public final enum Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ForDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;

.field public static final SYMBOL:C = 'd'


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2646
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;

    .line 2641
    filled-new-array {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2641
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2641
    const-class v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;
    .locals 1

    .line 2641
    sget-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForDescriptor;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Ljava/lang/String;
    .locals 1
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 2657
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
