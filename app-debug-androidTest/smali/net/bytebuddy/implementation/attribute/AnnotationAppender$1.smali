.class synthetic Lnet/bytebuddy/implementation/attribute/AnnotationAppender$1;
.super Ljava/lang/Object;
.source "AnnotationAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/attribute/AnnotationAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$java$lang$annotation$RetentionPolicy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 336
    invoke-static {}, Ljava/lang/annotation/RetentionPolicy;->values()[Ljava/lang/annotation/RetentionPolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$1;->$SwitchMap$java$lang$annotation$RetentionPolicy:[I

    :try_start_0
    sget-object v1, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    invoke-virtual {v1}, Ljava/lang/annotation/RetentionPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$1;->$SwitchMap$java$lang$annotation$RetentionPolicy:[I

    sget-object v1, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    invoke-virtual {v1}, Ljava/lang/annotation/RetentionPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lnet/bytebuddy/implementation/attribute/AnnotationAppender$1;->$SwitchMap$java$lang$annotation$RetentionPolicy:[I

    sget-object v1, Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;

    invoke-virtual {v1}, Ljava/lang/annotation/RetentionPolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    return-void
.end method
