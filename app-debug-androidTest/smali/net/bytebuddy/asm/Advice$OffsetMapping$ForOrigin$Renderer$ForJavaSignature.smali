.class public final enum Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;
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
    name = "ForJavaSignature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;

.field public static final SYMBOL:C = 's'


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2669
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;

    .line 2664
    filled-new-array {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2664
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2664
    const-class v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;
    .locals 1

    .line 2664
    sget-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForOrigin$Renderer$ForJavaSignature;

    return-object v0
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/method/MethodDescription;)Ljava/lang/String;
    .locals 5
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "instrumentedMethod"    # Lnet/bytebuddy/description/method/MethodDescription;

    .line 2680
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2681
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 2682
    .local v1, "comma":Z
    invoke-interface {p2}, Lnet/bytebuddy/description/method/MethodDescription;->getParameters()Lnet/bytebuddy/description/method/ParameterList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/method/ParameterList;->asTypeList()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeList$Generic;->asErasures()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/type/TypeDescription;

    .line 2683
    .local v3, "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    if-eqz v1, :cond_0

    .line 2684
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2686
    :cond_0
    const/4 v1, 0x1

    .line 2688
    :goto_1
    invoke-interface {v3}, Lnet/bytebuddy/description/type/TypeDescription;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2689
    .end local v3    # "typeDescription":Lnet/bytebuddy/description/type/TypeDescription;
    goto :goto_0

    .line 2690
    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
