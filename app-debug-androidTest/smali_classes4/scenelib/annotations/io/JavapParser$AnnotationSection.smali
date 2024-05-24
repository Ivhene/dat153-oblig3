.class final enum Lscenelib/annotations/io/JavapParser$AnnotationSection;
.super Ljava/lang/Enum;
.source "JavapParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscenelib/annotations/io/JavapParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnnotationSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lscenelib/annotations/io/JavapParser$AnnotationSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lscenelib/annotations/io/JavapParser$AnnotationSection;

.field public static final enum RIA:Lscenelib/annotations/io/JavapParser$AnnotationSection;

.field public static final enum RIEA:Lscenelib/annotations/io/JavapParser$AnnotationSection;

.field public static final enum RIPA:Lscenelib/annotations/io/JavapParser$AnnotationSection;

.field public static final enum RVA:Lscenelib/annotations/io/JavapParser$AnnotationSection;

.field public static final enum RVEA:Lscenelib/annotations/io/JavapParser$AnnotationSection;

.field public static final enum RVPA:Lscenelib/annotations/io/JavapParser$AnnotationSection;


# instance fields
.field final locMode:Lscenelib/annotations/io/JavapParser$TargetMode;

.field final retention:Ljava/lang/annotation/RetentionPolicy;

.field final secTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 79
    new-instance v6, Lscenelib/annotations/io/JavapParser$AnnotationSection;

    const-string v1, "RVA"

    const/4 v2, 0x0

    const-string v3, "RuntimeVisibleAnnotations"

    sget-object v4, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    sget-object v5, Lscenelib/annotations/io/JavapParser$TargetMode;->ORIGINAL:Lscenelib/annotations/io/JavapParser$TargetMode;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lscenelib/annotations/io/JavapParser$AnnotationSection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/annotation/RetentionPolicy;Lscenelib/annotations/io/JavapParser$TargetMode;)V

    sput-object v6, Lscenelib/annotations/io/JavapParser$AnnotationSection;->RVA:Lscenelib/annotations/io/JavapParser$AnnotationSection;

    .line 80
    new-instance v1, Lscenelib/annotations/io/JavapParser$AnnotationSection;

    const-string v8, "RIA"

    const/4 v9, 0x1

    const-string v10, "RuntimeInvisibleAnnotations"

    sget-object v11, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    sget-object v12, Lscenelib/annotations/io/JavapParser$TargetMode;->ORIGINAL:Lscenelib/annotations/io/JavapParser$TargetMode;

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lscenelib/annotations/io/JavapParser$AnnotationSection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/annotation/RetentionPolicy;Lscenelib/annotations/io/JavapParser$TargetMode;)V

    sput-object v1, Lscenelib/annotations/io/JavapParser$AnnotationSection;->RIA:Lscenelib/annotations/io/JavapParser$AnnotationSection;

    .line 81
    new-instance v2, Lscenelib/annotations/io/JavapParser$AnnotationSection;

    const-string v14, "RVPA"

    const/4 v15, 0x2

    const-string v16, "RuntimeVisibleParameterAnnotations"

    sget-object v17, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    sget-object v18, Lscenelib/annotations/io/JavapParser$TargetMode;->PARAMETER:Lscenelib/annotations/io/JavapParser$TargetMode;

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lscenelib/annotations/io/JavapParser$AnnotationSection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/annotation/RetentionPolicy;Lscenelib/annotations/io/JavapParser$TargetMode;)V

    sput-object v2, Lscenelib/annotations/io/JavapParser$AnnotationSection;->RVPA:Lscenelib/annotations/io/JavapParser$AnnotationSection;

    .line 82
    new-instance v3, Lscenelib/annotations/io/JavapParser$AnnotationSection;

    const-string v8, "RIPA"

    const/4 v9, 0x3

    const-string v10, "RuntimeInvisibleParameterAnnotations"

    sget-object v11, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    sget-object v12, Lscenelib/annotations/io/JavapParser$TargetMode;->PARAMETER:Lscenelib/annotations/io/JavapParser$TargetMode;

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lscenelib/annotations/io/JavapParser$AnnotationSection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/annotation/RetentionPolicy;Lscenelib/annotations/io/JavapParser$TargetMode;)V

    sput-object v3, Lscenelib/annotations/io/JavapParser$AnnotationSection;->RIPA:Lscenelib/annotations/io/JavapParser$AnnotationSection;

    .line 83
    new-instance v4, Lscenelib/annotations/io/JavapParser$AnnotationSection;

    const-string v14, "RVEA"

    const/4 v15, 0x4

    const-string v16, "RuntimeVisibleTypeAnnotations"

    sget-object v17, Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;

    sget-object v18, Lscenelib/annotations/io/JavapParser$TargetMode;->EXTENDED:Lscenelib/annotations/io/JavapParser$TargetMode;

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lscenelib/annotations/io/JavapParser$AnnotationSection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/annotation/RetentionPolicy;Lscenelib/annotations/io/JavapParser$TargetMode;)V

    sput-object v4, Lscenelib/annotations/io/JavapParser$AnnotationSection;->RVEA:Lscenelib/annotations/io/JavapParser$AnnotationSection;

    .line 84
    new-instance v5, Lscenelib/annotations/io/JavapParser$AnnotationSection;

    const-string v8, "RIEA"

    const/4 v9, 0x5

    const-string v10, "RuntimeInvisibleTypeAnnotations"

    sget-object v11, Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;

    sget-object v12, Lscenelib/annotations/io/JavapParser$TargetMode;->EXTENDED:Lscenelib/annotations/io/JavapParser$TargetMode;

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lscenelib/annotations/io/JavapParser$AnnotationSection;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/annotation/RetentionPolicy;Lscenelib/annotations/io/JavapParser$TargetMode;)V

    sput-object v5, Lscenelib/annotations/io/JavapParser$AnnotationSection;->RIEA:Lscenelib/annotations/io/JavapParser$AnnotationSection;

    .line 78
    filled-new-array/range {v0 .. v5}, [Lscenelib/annotations/io/JavapParser$AnnotationSection;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/io/JavapParser$AnnotationSection;->$VALUES:[Lscenelib/annotations/io/JavapParser$AnnotationSection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/annotation/RetentionPolicy;Lscenelib/annotations/io/JavapParser$TargetMode;)V
    .locals 0
    .param p3, "secTitle"    # Ljava/lang/String;
    .param p4, "retention"    # Ljava/lang/annotation/RetentionPolicy;
    .param p5, "locMode"    # Lscenelib/annotations/io/JavapParser$TargetMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/annotation/RetentionPolicy;",
            "Lscenelib/annotations/io/JavapParser$TargetMode;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput-object p3, p0, Lscenelib/annotations/io/JavapParser$AnnotationSection;->secTitle:Ljava/lang/String;

    .line 93
    iput-object p4, p0, Lscenelib/annotations/io/JavapParser$AnnotationSection;->retention:Ljava/lang/annotation/RetentionPolicy;

    .line 94
    iput-object p5, p0, Lscenelib/annotations/io/JavapParser$AnnotationSection;->locMode:Lscenelib/annotations/io/JavapParser$TargetMode;

    .line 95
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lscenelib/annotations/io/JavapParser$AnnotationSection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 78
    const-class v0, Lscenelib/annotations/io/JavapParser$AnnotationSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/io/JavapParser$AnnotationSection;

    return-object v0
.end method

.method public static values()[Lscenelib/annotations/io/JavapParser$AnnotationSection;
    .locals 1

    .line 78
    sget-object v0, Lscenelib/annotations/io/JavapParser$AnnotationSection;->$VALUES:[Lscenelib/annotations/io/JavapParser$AnnotationSection;

    invoke-virtual {v0}, [Lscenelib/annotations/io/JavapParser$AnnotationSection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lscenelib/annotations/io/JavapParser$AnnotationSection;

    return-object v0
.end method
