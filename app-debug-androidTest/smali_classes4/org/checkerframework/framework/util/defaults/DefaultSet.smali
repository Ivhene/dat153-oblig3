.class Lorg/checkerframework/framework/util/defaults/DefaultSet;
.super Ljava/util/TreeSet;
.source "DefaultSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/TreeSet<",
        "Lorg/checkerframework/framework/util/defaults/Default;",
        ">;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lorg/checkerframework/framework/util/defaults/DefaultSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lorg/checkerframework/framework/util/defaults/DefaultSet;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/defaults/DefaultSet;-><init>()V

    sput-object v0, Lorg/checkerframework/framework/util/defaults/DefaultSet;->EMPTY:Lorg/checkerframework/framework/util/defaults/DefaultSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    new-instance v0, Lorg/checkerframework/framework/util/defaults/DefaultSet$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/defaults/DefaultSet$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 16
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DefaultSet( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-static {v1, p0}, Lorg/checkerframework/javacutil/PluginUtil;->join(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
