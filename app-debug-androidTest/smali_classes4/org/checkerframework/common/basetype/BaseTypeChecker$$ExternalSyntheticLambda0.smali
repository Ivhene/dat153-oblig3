.class public final synthetic Lorg/checkerframework/common/basetype/BaseTypeChecker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/checkerframework/common/basetype/BaseTypeChecker;


# direct methods
.method public synthetic constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeChecker$$ExternalSyntheticLambda0;->f$0:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    check-cast p1, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;

    check-cast p2, Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->$r8$lambda$iosrRukWEHW5zaDLDK_FucJE4VE(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;Lorg/checkerframework/common/basetype/BaseTypeChecker$CheckerMessage;)I

    move-result p1

    return p1
.end method
