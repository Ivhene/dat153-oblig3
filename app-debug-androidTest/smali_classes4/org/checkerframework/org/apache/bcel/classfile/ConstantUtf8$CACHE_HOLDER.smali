.class Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8$CACHE_HOLDER;
.super Ljava/lang/Object;
.source "ConstantUtf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CACHE_HOLDER"
.end annotation


# static fields
.field private static final CACHE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8;",
            ">;"
        }
    .end annotation
.end field

.field private static final INITIAL_CACHE_CAPACITY:I = 0x682a

.field private static final MAX_CACHE_ENTRIES:I = 0x4e20


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 59
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8$CACHE_HOLDER$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/16 v3, 0x682a

    invoke-direct {v0, v3, v1, v2}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8$CACHE_HOLDER$1;-><init>(IFZ)V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8$CACHE_HOLDER;->CACHE:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 54
    sget-object v0, Lorg/checkerframework/org/apache/bcel/classfile/ConstantUtf8$CACHE_HOLDER;->CACHE:Ljava/util/HashMap;

    return-object v0
.end method
