.class Lcom/google/common/collect/MapMaker$ComputationExceptionReference;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/MapMaker$ValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComputationExceptionReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMaker$ValueReference",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final t:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 820
    .local p0, "this":Lcom/google/common/collect/MapMaker$ComputationExceptionReference;, "Lcom/google/common/collect/MapMaker$ComputationExceptionReference<TK;TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 821
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$ComputationExceptionReference;->t:Ljava/lang/Throwable;

    .line 822
    return-void
.end method


# virtual methods
.method public copyFor(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 828
    .local p0, "this":Lcom/google/common/collect/MapMaker$ComputationExceptionReference;, "Lcom/google/common/collect/MapMaker$ComputationExceptionReference<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/collect/MapMaker$ReferenceEntry;, "Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 824
    .local p0, "this":Lcom/google/common/collect/MapMaker$ComputationExceptionReference;, "Lcom/google/common/collect/MapMaker$ComputationExceptionReference<TK;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public waitForValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 831
    .local p0, "this":Lcom/google/common/collect/MapMaker$ComputationExceptionReference;, "Lcom/google/common/collect/MapMaker$ComputationExceptionReference<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/AsynchronousComputationException;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker$ComputationExceptionReference;->t:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/google/common/collect/AsynchronousComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
