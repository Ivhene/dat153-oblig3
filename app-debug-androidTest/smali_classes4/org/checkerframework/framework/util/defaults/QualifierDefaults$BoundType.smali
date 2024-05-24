.class final enum Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
.super Ljava/lang/Enum;
.source "QualifierDefaults.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/defaults/QualifierDefaults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "BoundType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

.field public static final enum LOWER:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

.field public static final enum UNBOUNDED:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

.field public static final enum UPPER:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1057
    new-instance v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    const-string v1, "UPPER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->UPPER:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    .line 1060
    new-instance v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    const-string v2, "LOWER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->LOWER:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    .line 1067
    new-instance v2, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    const-string v3, "UNBOUNDED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->UNBOUNDED:Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    .line 1054
    filled-new-array {v0, v1, v2}, [Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->$VALUES:[Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1054
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 1054
    const-class v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    .locals 1

    .line 1054
    sget-object v0, Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->$VALUES:[Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    invoke-virtual {v0}, [Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    return-object v0
.end method


# virtual methods
.method public varargs isOneOf([Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;)Z
    .locals 4
    .param p1, "choices"    # [Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;

    .line 1070
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1071
    .local v3, "choice":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    if-ne p0, v3, :cond_0

    .line 1072
    const/4 v0, 0x1

    return v0

    .line 1070
    .end local v3    # "choice":Lorg/checkerframework/framework/util/defaults/QualifierDefaults$BoundType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1076
    :cond_1
    return v1
.end method
