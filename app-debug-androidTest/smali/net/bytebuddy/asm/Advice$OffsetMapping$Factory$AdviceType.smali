.class public final enum Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;
.super Ljava/lang/Enum;
.source "Advice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;

.field public static final enum DELEGATION:Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;

.field public static final enum INLINING:Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;


# instance fields
.field private final delegation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1336
    new-instance v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;

    const-string v1, "DELEGATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;->DELEGATION:Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;

    .line 1341
    new-instance v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;

    const-string v4, "INLINING"

    invoke-direct {v1, v4, v3, v2}, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;->INLINING:Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;

    .line 1331
    filled-new-array {v0, v1}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "delegation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1353
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1354
    iput-boolean p3, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;->delegation:Z

    .line 1355
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1331
    const-class v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;
    .locals 1

    .line 1331
    sget-object v0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;->$VALUES:[Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;

    invoke-virtual {v0}, [Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;

    return-object v0
.end method


# virtual methods
.method public isDelegation()Z
    .locals 1

    .line 1363
    iget-boolean v0, p0, Lnet/bytebuddy/asm/Advice$OffsetMapping$Factory$AdviceType;->delegation:Z

    return v0
.end method
