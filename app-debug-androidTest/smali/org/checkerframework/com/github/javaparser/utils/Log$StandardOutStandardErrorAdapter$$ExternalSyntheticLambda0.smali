.class public final synthetic Lorg/checkerframework/com/github/javaparser/utils/Log$StandardOutStandardErrorAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/io/StringWriter;


# direct methods
.method public synthetic constructor <init>(Ljava/io/StringWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/Log$StandardOutStandardErrorAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/io/StringWriter;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/Log$StandardOutStandardErrorAdapter$$ExternalSyntheticLambda0;->f$0:Ljava/io/StringWriter;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Log$StandardOutStandardErrorAdapter;->$r8$lambda$kIIbbuiAVrzf08M2AWvMGHmflmE(Ljava/io/StringWriter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
