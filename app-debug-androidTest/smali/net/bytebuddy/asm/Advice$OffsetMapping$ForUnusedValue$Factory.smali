.class public final enum Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;
.super Ljava/lang/Enum;
.source "Advice.java"

# interfaces
.implements Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;",
        ">;",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory<",
        "Lnet/bytebuddy/asm/Advice$Unused;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;

.field public static final enum INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2866
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;->INSTANCE:Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;

    .line 2861
    filled-new-array {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2861
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2861
    const-class v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;
    .locals 1

    .line 2861
    sget-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue$Factory;

    return-object v0
.end method


# virtual methods
.method public getAnnotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lnet/bytebuddy/asm/Advice$Unused;",
            ">;"
        }
    .end annotation

    .line 2872
    const-class v0, Lnet/bytebuddy/asm/Advice$Unused;

    return-object v0
.end method

.method public make(Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;)Lnet/bytebuddy/asm/Advice$OffsetMapping;
    .locals 2
    .param p1, "target"    # Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;
    .param p3, "adviceType"    # Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;",
            "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<",
            "Lnet/bytebuddy/asm/Advice$Unused;",
            ">;",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;",
            ")",
            "Lnet/bytebuddy/asm/Advice$OffsetMapping;"
        }
    .end annotation

    .line 2881
    .local p2, "annotation":Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable;, "Lnet/bytebuddy/description/annotation/AnnotationDescription$Loadable<Lnet/bytebuddy/asm/Advice$Unused;>;"
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue;

    invoke-interface {p1}, Lnet/bytebuddy/description/method/ParameterDescription$InDefinedShape;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/asm/Advice$OffsetMapping$ForUnusedValue;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;)V

    return-object v0
.end method
