.class public abstract enum Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;
.super Ljava/lang/Enum;
.source "PluginUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/javacutil/PluginUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "CheckerProp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

.field public static final enum A_DETAILED_MSG:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

.field public static final enum A_FILENAMES:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

.field public static final enum A_LINT:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

.field public static final enum A_NO_MSG_TXT:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

.field public static final enum A_SHOW_CHECKS:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

.field public static final enum A_SKIP:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

.field public static final enum A_WARNS:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

.field public static final enum MISC_COMPILER:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 226
    new-instance v0, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$1;

    const-string v1, "MISC_COMPILER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;->MISC_COMPILER:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

    .line 239
    new-instance v1, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$2;

    const-string v3, "A_SKIP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;->A_SKIP:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

    .line 246
    new-instance v3, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$3;

    const-string v5, "A_LINT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;->A_LINT:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

    .line 253
    new-instance v5, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$4;

    const-string v7, "A_WARNS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;->A_WARNS:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

    .line 259
    new-instance v7, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$5;

    const-string v9, "A_NO_MSG_TXT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$5;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;->A_NO_MSG_TXT:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

    .line 265
    new-instance v9, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$6;

    const-string v11, "A_SHOW_CHECKS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$6;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;->A_SHOW_CHECKS:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

    .line 271
    new-instance v11, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$7;

    const-string v13, "A_FILENAMES"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$7;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;->A_FILENAMES:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

    .line 277
    new-instance v13, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$8;

    const-string v15, "A_DETAILED_MSG"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp$8;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;->A_DETAILED_MSG:Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

    .line 225
    const/16 v15, 0x8

    new-array v15, v15, [Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;->$VALUES:[Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 225
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/checkerframework/javacutil/PluginUtil$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/checkerframework/javacutil/PluginUtil$1;

    .line 225
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 225
    const-class v0, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;
    .locals 1

    .line 225
    sget-object v0, Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;->$VALUES:[Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

    invoke-virtual {v0}, [Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;

    return-object v0
.end method


# virtual methods
.method public abstract getCmdLine(Ljava/util/Map;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/checkerframework/javacutil/PluginUtil$CheckerProp;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
